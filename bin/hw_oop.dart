void main(List<String> arguments) {
  Worker work =
      Worker(name: "Ravshan", surname: "Kasimov", rate: 2000, days: 6);
  Validator validator =
   Validator(name: "Ravshan", surname: "Kasimov", login: '1234', number: "0552331113", date: "15 November" );
   print(validator.isEmail('124'));
   print(validator.isPhone("0552331113")); 
   print(validator.isDate("16 November")); 


  MyString myString = MyString();
  print(myString.reverse("ravshan"));
  print(myString.ucFirst('text'));
  print(myString.ucWords("kasimov ravshan gorod kant"));

  print(work.name);
  print(work.surname);
  print("зарплата ${work.getSalary(2000, 6)}");
}

class Worker {
  final String? name;
  final String? surname;
  final int? rate;
  final int? days;

  int getSalary(int rate, int days) {
    return rate * days;
  }

  Worker({this.name = "", this.surname = "", this.rate, this.days});
}

class MyString {
  String reverse(String input) {
    String output = "";

    for (int i = input.length - 1; i >= 0; i--) {
      output = output + input[i];
    }

    return output;
  }

  String ucFirst(String text) {
    return text.substring(0, 1).toUpperCase() + text.substring(1);
  }

  String? ucWords(String message) {
    List<String> a = [];
    for (int i = 0; i < message.length; i++) {
      a.add(message[i]);
      if(a[i] == a[i].toLowerCase()){
        a[i] = a[i].toUpperCase();
      }
    }
    print(a);
  }
}
class Validator{
  final String name; 
  final String surname; 
  final String login;
  final String number; 
  final String date; 

  Validator({this.name = "", this.surname = "", this.login = '', this.number = "", this.date = "" }); 
 

  bool isEmail(String a){
    if (a == login) {
      return true;
    }else{
      return false;
    }
  }
  bool isPhone(String b){
    if (b == number){
      return true; 
    }else{
      return false; 
    }
  }
  bool isDate(String c){
    if (c == date){
      return true; 
    }else{
      return false; 
    }
  }
  
} 


























// String a = "равшвн касимов молодец ";
//  a.toUpperCase();
//  print(a.toUpperCase());