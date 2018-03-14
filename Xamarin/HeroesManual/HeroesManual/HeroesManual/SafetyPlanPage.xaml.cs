using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace HeroesManual
{
	public partial class SafetyPlanPage : ContentPage
	{
		public SafetyPlanPage()
		{
			InitializeComponent();
		}

		private async void btnQRCode_Clicked(object sender, EventArgs e)
		{
			await Navigation.PushAsync(new SafetyPlanQRCodePage(), true);
		}

		private async void btnShareToPrint_Clicked(object sender, EventArgs e)
		{
			Device.OpenUri(new Uri(@"http://www.ncdsv.org/images/DV_Safety_Plan.pdf"));
			//await Navigation.PushAsync(new SafetyPlanPDFPage(), true);
		}
	}
}