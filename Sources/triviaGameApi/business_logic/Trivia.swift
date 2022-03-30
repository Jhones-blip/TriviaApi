import Foundation


struct QuizData: Decodable {
    var results: [QuestionData]
}


struct QuestionData: Decodable{
    var type: String
    var difficulty: String
    var question: String
    var correct_answer: String
    var incorrect_answers: [String]
}

struct UIQuestionData{
    var type: String
    var difficulty: String
    var question: String
    var correctAnswer: String
    var incorrectAnswers: [String]
}


struct Question {
    let question: String
    let correctAnswer: String
    let incorrectAnswers: [String]
}