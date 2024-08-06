using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace todaysvideo
{
    public partial class dasboard : ContentPage
    {
        ObservableCollection<OrderItem> orders = new ObservableCollection<OrderItem>();
        double totalPrice = 0;

        public dasboard()
        {
            InitializeComponent();
            orderList.ItemsSource = orders;
        }

        private void Entry_TextChanged(object sender, TextChangedEventArgs e)
        {
            var entry = sender as Entry;
            var selectedItem = entry?.BindingContext as OrderItem;

            if (selectedItem != null)
            {
                if (int.TryParse(e.NewTextValue, out int newValue))
                {
                    selectedItem.Quantity = newValue;
                    CalculateTotalPrice();
                }
                else
                {
                    entry.Text = e.OldTextValue;
                }
            }
        }

        private void back_Clicked(object sender, EventArgs e)
        {
            Application.Current.MainPage = new loginxaml();
        }

        private void CheckoutButton_Clicked(object sender, EventArgs e)
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                string result = await DisplayPromptAsync("Enter Cash", "Enter cash amount:", initialValue: "0", keyboard: Keyboard.Numeric);
                if (double.TryParse(result, out double cash) && cash >= totalPrice)
                {
                    double change = cash - totalPrice;

                    orderSummaryLayout.IsVisible = true;
                    cashLabel.Text = "Cash: " + cash.ToString("0.00");
                    changeLabel.Text = "Change: " + change.ToString("0.00");

                    SaveOrderSummaryToFile();
                }
                else
                {
                    await DisplayAlert("Invalid Amount", "The cash amount must be greater than or equal to the total price.", "OK");
                }
            });
        }

        private void SaveOrderSummaryToFile()
        {
            try
            {
                string directoryPath = "/storage/emulated/0/android";
                Directory.CreateDirectory(directoryPath);

                string filename = "OrderSummary.txt";
                string filepath = Path.Combine(directoryPath, filename);

                string printContent = "Order Summary:\n";
                foreach (var item in orders)
                {
                    printContent += $"{item.OrderName}: {item.Quantity} - {item.TotalPrice:C}\n";
                }
                printContent += $"Total: {totalPrice:C}";

                File.WriteAllText(filepath, printContent);
                DisplayAlert("Success", "Order summary saved to OrderSummary.txt", "OK");
            }
            catch (Exception ex)
            {
                DisplayAlert("Error", $"An error occurred while saving the order summary: {ex.Message}", "OK");
            }
        }

        private void Stepper_ValueChanged(object sender, ValueChangedEventArgs e)
        {
            var stepper = sender as Stepper;
            var selectedItem = stepper?.BindingContext as OrderItem;

            if (selectedItem != null)
            {
                selectedItem.Quantity = (int)e.NewValue;
                CalculateTotalPrice();
            }
        }

        private void CalculateTotalPrice()
        {
            totalPrice = 0;
            foreach (var item in orders)
            {
                totalPrice += item.Quantity * 10.00;
            }

            totalLabel.Text = "Total: Pesos " + totalPrice.ToString("0.00");
        }

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var label = sender as Label;
            var itemName = label?.Text;
            if (itemName == null)
                return;

            Device.BeginInvokeOnMainThread(async () =>
            {
                string result = await DisplayPromptAsync("Enter Quantity", $"Enter quantity for {itemName}:", initialValue: "1", keyboard: Keyboard.Numeric);
                if (int.TryParse(result, out int quantityToAdd) && quantityToAdd > 0)
                {
                    var existingItem = orders.FirstOrDefault(item => item.OrderName == itemName);
                    if (existingItem != null)
                    {
                        existingItem.Quantity += quantityToAdd;
                    }
                    else
                    {
                        orders.Add(new OrderItem { OrderName = itemName, OrderDetails = "Details", Quantity = quantityToAdd });
                    }

                    CalculateTotalPrice();
                }
            });
        }

        private async void PrintButton_Clicked(object sender, EventArgs e)
        {
            string printContent = "Order Summary:\n";
            foreach (var item in orders)
            {
                printContent += $"{item.OrderName}: {item.Quantity} - {item.TotalPrice:C}\n";
            }
            printContent += $"Total: {totalPrice:C}";

            await DependencyService.Get<IPrintService>().PrintAsync(printContent);
        }

        private void NewTransactionButton_Clicked(object sender, EventArgs e)
        {
            orders.Clear();
            totalPrice = 0;
            totalLabel.Text = "Total: Pesos 0.00";
            orderSummaryLayout.IsVisible = false;
        }
    }

    public class OrderItem : INotifyPropertyChanged
    {
        private int quantity;

        public string OrderName { get; set; }
        public string OrderDetails { get; set; }

        public int Quantity
        {
            get => quantity;
            set
            {
                if (quantity != value)
                {
                    quantity = value;
                    OnPropertyChanged(nameof(Quantity));
                    OnPropertyChanged(nameof(TotalPrice));
                }
            }
        }

        public double TotalPrice => Quantity * 1.99;

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }

    public interface IPrintService
    {
        Task PrintAsync(string content);
    }
}
