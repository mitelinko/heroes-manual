using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace HeroesManual
{
    public enum ProfessionEnum { Healthcare, Judge, Police, Social };

    public partial class App : Application
	{
		public App ()
		{
			InitializeComponent();

            if (App.Current.Properties.ContainsKey("SavedProfession"))
            {
                var savedProfession = (ProfessionEnum)App.Current.Properties["SavedProfession"];
                switch (savedProfession)
                {
                    case ProfessionEnum.Healthcare:
                        MainPage = new NavigationPage(new HealthcareHomePage());
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
                MainPage = new NavigationPage(new MainPage());
            }
            
		}

		protected override void OnStart ()
		{
			// Handle when your app starts
		}

		protected override void OnSleep ()
		{
			// Handle when your app sleeps
		}

		protected override void OnResume ()
		{
			// Handle when your app resumes
		}
	}
}
