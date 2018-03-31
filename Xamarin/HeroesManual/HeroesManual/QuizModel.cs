using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;

namespace HeroesManual
{

  public class QuizModel : INotifyPropertyChanged
  {
    public enum AnswerEnum { A, B, C };

    private string[] questions;
    private string[] answerAs;
    private string[] answerBs;
    private string[] answerCs;
    private AnswerEnum[] correctAnswers;
    private AnswerEnum[] selectedAnswers;

    private int currentQuestionNumber;


    public QuizModel()
    {
      questions = new[]
      {
        "",
        "What age group has the highest rate of intimate partner violence?",
        "What is the annual cost to society of domestic violence?"
      };

      answerAs = new[]
      {
        "",
        "Teen girls and young childbearing women (18-24)",
        "$300 million"
      };

      answerBs = new[]
      {
        "",
        "Women 35-45",
        "$875 million"
      };

      answerCs = new[]
      {
        "",
        "Seniors (65+)",
        "$5.8 billion"
      };

      correctAnswers = new[]
      {
        AnswerEnum.A, // disregard this one as it is just a placeholder
        AnswerEnum.A,
        AnswerEnum.C
      };

      selectedAnswers = new AnswerEnum[correctAnswers.Length];

      currentQuestionNumber = 0;

      LoadNextQuestion();
    }


    public void SelectAnswer(AnswerEnum selectedAnswer) => selectedAnswers[currentQuestionNumber] = selectedAnswer;

    public void LoadNextQuestion()
    {
      if (currentQuestionNumber == questions.Length - 1)
      {
        IsQuizCompleted = true;
      }
      else
      {
        currentQuestionNumber++;

        QuestionNumber = $"Question {currentQuestionNumber}/{questions.Length - 1}";
        Question = questions[currentQuestionNumber];
        AnswerA = answerAs[currentQuestionNumber];
        AnswerB = answerBs[currentQuestionNumber];
        AnswerC = answerCs[currentQuestionNumber];
      }
    }

    private bool isQuizCompleted;
    public bool IsQuizCompleted
    {
      get => isQuizCompleted;
      set
      {
        if (isQuizCompleted != value)
        {
          isQuizCompleted = value;
          OnPropertyChanged();
        }
      }
    }

    private string questionNumber;
    public string QuestionNumber
    {
      get => questionNumber;
      set
      {
        if (questionNumber != value)
        {
          questionNumber = value;
          OnPropertyChanged();
        }
      }
    }

    private string question;
    public string Question
    {
      get => question;
      set
      {
        if (question != value)
        {
          question = value;
          OnPropertyChanged();
        }
      }
    }

    private string answerA;
    public string AnswerA
    {
      get => answerA;
      set
      {
        if (answerA != value)
        {
          answerA = value;
          OnPropertyChanged();
        }
      }
    }

    private string answerB;
    public string AnswerB
    {
      get => answerB;
      set
      {
        if (answerB != value)
        {
          answerB = value;
          OnPropertyChanged();
        }
      }
    }

    private string answerC;
    public string AnswerC
    {
      get => answerC;
      set
      {
        if (answerC != value)
        {
          answerC = value;
          OnPropertyChanged();
        }
      }
    }

    protected void OnPropertyChanged([CallerMemberName] string propertyName = null) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

    public event PropertyChangedEventHandler PropertyChanged;

  }
}
