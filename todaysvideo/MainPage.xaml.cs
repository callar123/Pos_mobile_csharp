using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using SQLite;
using System.IO;

namespace todaysvideo
{
    public partial class MainPage : ContentPage
    {
        string _dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "RegDB.db3");
        public MainPage()
        {
            InitializeComponent();
        }
        private void savedata()
        {
            try
            {
                var db = new SQLiteConnection(_dbPath);
                db.CreateTable<storage>();
                storage aa = new storage()
                {
                    Username = usernameEntry.Text,
                    Pass = passEntry.Text,
                    Conpass = conEntry.Text,
                    

                };
                db.Insert(aa);
                DisplayAlert("Success", "Data has been saved successfully!", "Ok");
                

            }
            catch
            {
                DisplayAlert("Failed", "There's something Error in the Command", "Ok");
            }
        }
        private void ButtonSave_Clicked(object sender, EventArgs e)
        {
            if (usernameEntry.Text == "")
            {
                DisplayAlert("Wait!", "Please input a name!", "Ok!");
            }
            else if (passEntry.Text == "")
            {
                DisplayAlert("Wait!", "Please input an email!", "Ok!");
            }
            else if (conEntry.Text == "")
            {
                DisplayAlert("Wait!", "Please input a phone number!", "Ok!");
            }
           
                savedata();
               
               
             
            }

        private void ButtonCancel_Clicked(object sender, EventArgs e)
        {
            
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
           
        }

        private void ButtonCancel_Clicked_1(object sender, EventArgs e)
        {
            
        }

        private void back_Clicked(object sender, EventArgs e)
        {
            Application.Current.MainPage = new loginxaml();
        }
    }

    
}
