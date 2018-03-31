using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace HeroesManual
{
  public partial class QuizPage : ContentPage
  {
    private QuizModel model;
    public QuizPage()
    {
      InitializeComponent();
      model = new QuizModel();
      BindingContext = model;
    }

    private  void AnswerA_Clicked(object sender, EventArgs e)
    {
      model.SelectAnswer(QuizModel.AnswerEnum.A);

      GoToNextQuestion();
    }

    private  void AnswerB_Clicked(object sender, EventArgs e)
    {
      model.SelectAnswer(QuizModel.AnswerEnum.B);

      GoToNextQuestion();
    }

    private void AnswerC_Clicked(object sender, EventArgs e)
    {
      model.SelectAnswer(QuizModel.AnswerEnum.C);

      GoToNextQuestion();
    }

    private async void GoToNextQuestion()
    {
      model.LoadNextQuestion();

      if (model.IsQuizCompleted)
      {
        await Navigation.PushAsync(new HealthcareHomePage());
      }
    }
  }
}
