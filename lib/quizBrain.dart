import 'question.dart';

class QuizBrain {
  int _currentQuestion = 0;
  List<Question> _questions = [
    Question(text:'You can lead a cow down stairs but not up stairs.',answer: false ),
    Question(text:'Approximately one quarter of human bones are in the feet.',answer: true ),
    Question(text:'A slug\'s blood is green.',answer: true ),
  ];

  QuizBrain(){
    _questions.shuffle();
  }

  String getQuestionText(){
    return _questions[_currentQuestion].text;
  }

  bool getQuestionAnswer(){
    return _questions[_currentQuestion].answer;
  }
  int getCurrentQuestion(){
    return _currentQuestion;
  }
  bool isFinished(){
    return  _currentQuestion >= _questions.length - 1;
  }
  void reset(){
    _currentQuestion = 0;
   _questions.shuffle();
  }

  void nextQuestion(){
    if (_currentQuestion < _questions.length - 1){
      _currentQuestion++;
    }
  }



}