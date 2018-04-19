//
//  QuizContent.swift
//  HeroesManual
//
//  Created by Tucker on 3/28/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import Foundation

class QuizItems {
    var items = Questions
}

struct QuizItem {
    let question: String
    let options: [String]
    let answer: Int
    let details: String
}

let Questions: [QuizItem] = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11]

let q1 = QuizItem(question: "What age group has the highest rate of intimate partner violence?",
                  options: ["Teen girls and young childbearing women (18-24)",
                            "Women 35-45",
                            "Seniors (65+)"],
                  answer: 0,
                  details: "Approximately “one in three adolescents in the U.S. is a victim of physical, sexual, emotional, or verbal abuse from a dating partner, a figure that far exceeds rates of other types of youth violence.” National Domestic Violence Hotline, 2014.")

let q2 = QuizItem(question: "What is the annual cost to society of domestic violence?",
                  options: ["$300 million",
                            "$1.2 billion",
                            "$5.8 billion"],
                  answer: 2,
                  details: "Domestic violence costs include those associated with healthcare, law enforcement, judiciary, and social services.Costs associated with healthcare and services is estimated to be $4.1 billion per year.")

let q3 = QuizItem(question: "Which of the following is true about the effects of domestic violence on children?",
                  options: ["Children exposed to domestic violence are more likely to be anxious than those not exposed.",
                            "Children who witness domestic abuse have higher risks of alcohol/drug abuse, post traumatic stress syndrome, and juvenile delinquency.",
                            "All of the above."],
                  answer: 2,
                  details: "Research shows children (3-4 million per year), who are exposed to domestic violence tend to have more emotional and behavioral problems, such as anxiety, alcohol/drug use, post-traumatic stress syndrome and juvenile delinquency. Frequently, they replicate the violence they have witnessed during their teen years, in their adult relationships, and as parents.")

let q4 = QuizItem(question: "Which of the following could be signs of domestic violence?",
                  options: ["Injuries on forearms, bruises, bite marks, rape as well as physical threats, belittling behavior, controlling behavior",
                            "Withholding money or credit cards, restricting patient to an allowance, stealing from the patient",
                            "All of the above"],
                  answer: 2,
                  details: "There might be physical, sexual, emotional, and/or financial abuse. Never assume that an injury is an accident, especially when accompanied with behavioral signs of violence. Routine assessment and screening for domestic violence is recommended.")

let q5 = QuizItem(question: "Screening: Which of these is an appropriate question to ask the patient during screening?",
                  options: ["What did you do to make him hit you?",
                            "Do you feel you are in danger?",
                            "Have you tried marriage counseling?"],
                  answer: 1,
                  details: "Patient safety is the priority. Personal opinions and accusatory remarks can result in the patient feeling like they have done something wrong.")

let q6 = QuizItem(question: "Which of the following is NOT a supportive follow-up statement to a patient revealing evidence of domestic violence?",
                  options: ["You are not alone.",
                            "I’m sorry you have been hurt.",
                            "If it were me, I wouldn’t put up with this."],
                  answer: 2,
                  details: "Show support and empathy when interacting with the patient, rather than accusing or judging the patient. This is useful in gaining the patient’s confidence and trust.")

let q7 = QuizItem(question: "Why should a patient that is a victim of domestic violence have a safety plan?",
                  options: ["The patient might not think clearly during stressful situations due to adrenaline, so it’s good to plan ahead.",
                            "The patient may not have time to gather the necessary items when escaping.",
                            "All of the above"],
                  answer: 2,
                  details: "All of the above answers help the patient/victim be better prepared for the next episode of violence by giving them a personalized and practical plan.")

let q8 = QuizItem(question: "Which of the following is NOT a way to increase the safety of a child in the home?",
                  options: ["Make a code word with them to call 911. Make sure they know their address and phone number.",
                            "Teach them how to break up a fight between their parents.",
                            "Plan an escape route"],
                  answer: 1,
                  details: "Children should be kept as far away from any acts of domestic violence as possible.")

let q9 = QuizItem(question: "Which of the following is FALSE about the effects of drugs and alcohol on domestic violence?",
                  options: ["Perpetrators frequently use alcohol and drugs to rationalize their actions.",
                            "Alcohol and drugs cause domestic violence.",
                            "Drugs and alcohol do not cause the violence, but can lower the inhibitions of perpetrators."],
                  answer: 2,
                  details: "While alcohol and drugs can alter the state of an abuser, these substances should not be blamed for their violent or abusive actions.")

let q10 = QuizItem(question: "Which of the following is a reason a patient might give for not leaving a relationship?",
                  options: ["Belief that they are the only one who can help the abuser with their problems or that the abusive partner will change because of his/her remorse and promises to stop battering.",
                            "Lack of financial resources and anxiety about making a major life change or concerns over breaking the family up and guilt associated with a failed relationship.",
                            "All of the above"],
                  answer: 2,
                  details: "There are many reasons why a patient might feel unable to leave. As a healthcare provider, you should refrain from passing judgement and focus on assisting them in creating safety plan and providing other helpful resources.")

let q11 = QuizItem(question: "Which of the following is NOT a correct practice for documenting domestic violence?",
                   options: ["Use phrases such as the “patient claims” or “patient alleges.”",
                            "Set off the patient’s own words in quotation marks or use such phrases as “patient states” or “patient reports” to indicate that the information recorded reflects the patient’s words.",
                            "Record the time of day the patient is examined and, if possible, indicate how much time has elapsed since the abuse occurred, and describe the patient’s demeanor, indicating, for example, whether she is crying or shaking or seems angry, agitated, upset, calm, or happy."],
                   answer: 0,
                   details: "Remember that all documentation is admissible in court and can be vital to a patient’s case. The above phrases imply doubt about the patient’s reliability. In general, be as detailed and factual as possible with documentation, using medical terminology as opposed to legal terms.")







































