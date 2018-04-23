package dev.simba.heroesmanual;

public class Quiz {

    private String question;
    private String answerA;
    private String answerB;
    private String answerC;
    private int correctAnswerNumber;
    private String answerDetails;

    public Quiz(String question, String answerA, String answerB, String answerC, int correctAnswerNumber, String answerDetails) {
        this.question = question;
        this.answerA = answerA;
        this.answerB = answerB;
        this.answerC = answerC;
        this.correctAnswerNumber = correctAnswerNumber;
        this.answerDetails = answerDetails;
    }

    public String getQuestion() {
        return question;
    }

    public String getAnswerA() {
        return answerA;
    }

    public String getAnswerB() {
        return answerB;
    }

    public String getAnswerC() {
        return answerC;
    }

    public int getCorrectAnswerNumber() {
        return correctAnswerNumber;
    }

    public String getAnswerDetails() {
        return answerDetails;
    }
}
