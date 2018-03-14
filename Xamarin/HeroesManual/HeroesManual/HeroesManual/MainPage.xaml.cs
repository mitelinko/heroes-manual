using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace HeroesManual
{
    public enum ProfessionEnum { Healthcare, Judge, Police, Social };
	public partial class MainPage : ContentPage
	{
		public MainPage()
		{
			InitializeComponent();
		}

        private async void Button_Clicked(object sender, EventArgs e)
        {
            if (Application.Current.Properties.ContainsKey("SavedProfession"))
            {
                var savedProfession = (ProfessionEnum)Application.Current.Properties["SavedProfession"];
                switch (savedProfession)
                {
                    case ProfessionEnum.Healthcare:
                        await Navigation.PushAsync(new HealthcareHomePage());
                        break;
                    case ProfessionEnum.Judge:
                        break;
                    case ProfessionEnum.Police:
                        break;
                    case ProfessionEnum.Social:
                        break;
                    default:
                        throw new ArgumentOutOfRangeException(nameof(savedProfession), "Unsupported profession encountered");
                }
            }
            else
            {
                await Navigation.PushAsync(new ProfessionsPage());
            }
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
