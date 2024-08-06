using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using SQLite;

namespace todaysvideo
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class loginxaml : ContentPage
    {

       
        public loginxaml()
        {
            InitializeComponent();
        }
        string _dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "RegDB.db3");

        private void Button_Clicked(object sender, EventArgs e)
        {
            try
            {
                var db = new SQLiteConnection(_dbPath);
                var user = db.Table<storage>().Where(u => u.Username == usernameEntry.Text && u.Pass == passEntry.Text).FirstOrDefault();
                if (user != null)
                {
                    DisplayAlert("Success", "Login successful!", "Ok");
                    Application.Current.MainPage = new dasboard();
                    // Navigate to your main page or perform any other action after successful login
                }
                else
                {
                    DisplayAlert("Error", "Invalid username or password!", "Ok");
                }
            }
            catch (Exception ex)
            {
                DisplayAlert("Error", ex.Message, "Ok");
            }
        }

        private void Button_Clicked_1(object sender, EventArgs e)
        {
            Application.Current.MainPage = new MainPage();
        }
    }
}