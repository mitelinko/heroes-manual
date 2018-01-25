using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace HeroesManual
{
	public partial class ProfessionsPage : ContentPage
	{
		public ProfessionsPage()
		{
			InitializeComponent();
		}

		//public FormattedString AveragePrice
		//{
		//	get
		//	{
		//		return new FormattedString
		//		{
		//			Spans =
		//						{
		//								new Span { Text = "$", ForegroundColor=Color.Black },
		//								new Span { Text = "$", ForegroundColor=Color.Black },
		//								new Span { Text = "$", ForegroundColor=Color.Gray },
		//								new Span { Text = "$", ForegroundColor=Color.Gray }
		//						}
		//		};
		//	}
		//}

		private async void Button_Clicked(object sender, EventArgs e)
		{
			//await Navigation.PushAsync(new HealthcareHomePage());
		}
	}
}
