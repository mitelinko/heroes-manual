﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace HeroesManual
{
	public partial class HealthcareHomePage : ContentPage
	{

		public HealthcareHomePage()
		{
			InitializeComponent();

			
		}

		private async void ToolbarItem_Clicked(object sender, EventArgs e)
		{
			await Navigation.PushAsync(new ProfessionsPage());
		}

		private async void btnWhatToSay_Clicked(object sender, EventArgs e)
		{
			
		}

		private async void btnProvideResources_Clicked(object sender, EventArgs e)
		{
			
		}

		private void btnLearn_Clicked(object sender, EventArgs e)
		{

		}

		private async void btnScreenForDV_Clicked(object sender, EventArgs e)
		{
			
		}
	}
}
