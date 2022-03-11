void main(List<String> args) {
//////////////////////////////////////////////////////////////////
///////////////// first member ////////////////
  var m1 = managers();
  m1.numOfEmployee = 1;
  m1.firstName = "Aya";
  m1.secondName = "Ali";
  m1.age = 15;
  m1.phone = "019200211";
  m1.salary = 2900;
  m1.section = "IT";
  m1.isAttend = true;
  m1.employeeDetails();
  m1.taskOrNot(m1.firstName, m1.secondName);
  m1.ListOfTask(m1.firstName, m1.secondName);
  print(" ");
  print(" ");
  ///////////////////////////////////////////////////////////
  //////////// Second member /////////////////
  print("//");
  var m2 = managers();
  m2.numOfEmployee = 4;
  m2.firstName = "mona";
  m2.secondName = "Ali";
  m2.age = 15;
  m2.phone = "10992345679";
  m2.salary = 2900;
  m2.section = "CS";
  m2.isAttend = true;
  m2.employeeDetails();
  m2.taskOrNot(m2.firstName, m2.secondName);
  m2.ListOfTask(m2.firstName, m2.secondName);
}

//////////////////////////////////////////////////////////////////

class Memberss {
///////// here we have -Name - Age - Phone - Salary - Section - Record their attendance ///////////
  String? firstName;
  String? secondName;
  int? age;
  String? phone;
  int? salary;
  String? section;
  bool? isAttend;
}
//////////////////////////////////////////////////////////////////////////////////////////

class managers extends Memberss {
////////////   here we have number of the employee , the task , deliver or not , and inherit all objects from the members class ///////////////
  int? numOfEmployee;
  var task = null;
  bool deliver = false;

  void taskOrNot(var fname, var sname) {
    if (fname == "Yara" && sname == "Ahmed") {
      deliver = true;
      task = "Go to School to collect information about students";
      print("$task - deliver is : $deliver");
    } else if (fname == "Aya" && sname == "Ali") {
      deliver = true;
      task = "Go to the third floor to collect information from the server";
      print(
          " So.. $fname\t$sname  ... your have a task: $task - deliver is : $deliver");
    } else
      print("So .. $fname "
          "$sname you don't have a task till now , task = $task - deliver is : $deliver");
  }

/////////////////////////////////////////////////////////////
///////// Show Details about the employees //////////
  void employeeDetails() {
    print(
        " the name : $firstName -- $secondName -- the age : $age -- phone : $phone -- salary : $salary -- section : $section -- is attend ? : $isAttend  -- num: $numOfEmployee");
  }

///////////////////////////////////////////////////////////////
///////////////// task ///////////////////
  void ListOfTask(var fname, var sname) {
    var a = fname + " " + sname;
    switch (a) {
      case "yara ahmed":
        print("Go to School to collect information about students");
        break;
      case "Yara Ahmed":
        print("Go to School to collect information about students");
        break;
      case "aya ali":
        print("Go to the third floor to collect information from the server");
        break;
      case "Aya Ali":
        print("Go to the third floor to collect information from the server");
        break;

      default:
        print("The task state : ");
        print("$fname "
            "$sname  don't have a task till now , task = $task");
    }
  }
}
