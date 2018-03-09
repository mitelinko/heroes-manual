﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace HeroesManual
{
	public partial class ProvideResourcesPage : ContentPage
	{
		public ProvideResourcesPage()
		{
			InitializeComponent();
		}

        private async void safetyPlanButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SafetyPlanPage());
        }
	}
}
