import Foundation

typealias CallbackBlock <T:Any> = (_ value:[T])->Void

class TriviaPresenter{
    static let instance:TriviaPresenter = TriviaPresenter()  
    let dataService:TriviaDataService = TriviaDataService.instance 
    var questions : [UIQuestionData] = []

    func loadQuestions(){

        dataService.getQuestions(onCompletion:{ quizData in 
            self.addquestion(quizData)  
        })
    }

    func addquestion(_ questions:[UIQuestionData]){
        self.questions = questions
    }

    func getquestion() -> [UIQuestionData]{
        return self.questions
    }

}