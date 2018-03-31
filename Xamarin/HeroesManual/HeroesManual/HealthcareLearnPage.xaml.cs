using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace HeroesManual
{
  public partial class HealthcareLearnPage : ContentPage
  {
    public HealthcareLearnPage()
    {
      InitializeComponent();
    }

    private async void btnGeneralInfo_Clicked(object sender, EventArgs e)
    {
      await Navigation.PushAsync(new GeneralInfoPage());
    }

    private async void btnVictimInfo_Clicked(object sender, EventArgs e)
    {
      await Navigation.PushAsync(new VictimInfoPage());
    }

    private async void btnPerpInfo_Clicked(object sender, EventArgs e)
    {
      await Navigation.PushAsync(new PerpInfoPage());
    }

    private async void safetyPlanButton_Clicked(object sender, EventArgs e)
    {
      await Navigation.PushAsync(new SafetyPlanResourcesPage());
    }

    private async void communicationResourcesButton_Clicked(object sender, EventArgs e)
    {
      await Navigation.PushAsync(new CommunicationResourcesPage());
    }

    private async void screeningResourcesButton_Clicked(object sender, EventArgs e)
    {
      await Navigation.PushAsync(new ScreeningResourcesPage());
    }

    private async void testYourKnowledgeButton_Clicked(object sender, EventArgs e)
    {
      await Navigation.PushAsync(new QuizPage());
    }
  }
}
