using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace HeroesManual
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
           
                await Navigation.PushAsync(new ProfessionsPage());
            
        }

        private void ScrollView_Scrolled(object sender, ScrolledEventArgs e)
        {
            var scrollView = sender as ScrollView;
            if (scrollView.ScrollY >= scrollView.ContentSize.Height - scrollView.Height)
            {
                //Handle hitting the bottom
                btnAgree.IsEnabled = true;
            }
        }
    }
}
