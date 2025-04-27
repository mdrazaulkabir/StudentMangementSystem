import 'dart:io';
main(){
  List<Map<String,dynamic>>students=[];
  while(true){
    print("\t \t \n \nStudent Management System");
    print("1.Add student name and score:");
    print('2.View all student:');
    print('3.Find the highest and lowest scorer:');
    print("4.Calculate the average score:");
    print('5.Exit....');
    print('....................................................');

    print('Select any one of this:');
    int? selcet=int.parse(stdin.readLineSync()!);
    if(selcet==1){
      addStudent(students);
    }
    else if(selcet==2){
      viewStudent(students);
    }
    else if(selcet==3){
      findHighLowScore(students);
    }
    else if (selcet==4){
      calculateAverageScore(students);
    }
    else if(selcet==5){
      print('Successfully exit the process: ');
    }
    else{
      print('Invalid! or Wrong! number selected try agin and select number 1-5:');
    }

  }
}

 void addStudent(List<Map<String, dynamic>>students){

  print("How many student do you want add:");
  int num=int.parse(stdin.readLineSync()!);


  for(int i=1; i<=num; i++){
     print("\nEnter student name:");
      String? name=stdin.readLineSync();
      print("Enter the student score:");
      double? score=double.parse(stdin.readLineSync()!);
      print("Enter your age:");
      double? age=double.parse(stdin.readLineSync()!);


      if(name!=null && name.isNotEmpty && score!=null&&age!=null){
        students.add({'Name:': name ,"Score:" : score,"Age:":age});
      }
      else{
        print("Invalid input try again!");
      }

  }
   print("Successfully added student information:");
 }


    void viewStudent(List<Map<String,dynamic>>students){

      if(students.isEmpty){
        print("No students added yet:");
      }

     else{
       print("List of Student:");
      for(var student in students){
        //very very important is that key will be same of upper which is taken
        print(" Student name: ${student['Name:']} \n  His score is ${student['Score:']} \n His age is ${student['Age:']}");
      }
     }
      

    }



   void findHighLowScore(List<Map<String,dynamic>>students){
      if(students.isEmpty){
        print("No student added and don't find yet:");
      }
      else{
         String highestScoreName=students[0]['Name:'];
      double highestScore=students[0]['Score:'];
       double highestScoreAge=students[0]['Age:'];

      String lowestScoreName=students[0]['Name:'];
      double lowestScore=students[0]['Score:'];
      double lowestScoreAge=students[0]['Age:'];
      
      
    for(var student in students){
      if(highestScore<student['Score:']){
        highestScore=student['Score:'];
        highestScoreName=student['Name:'];
        highestScoreAge=student['Age:'];
      }
      else if(lowestScore>student['Score:']){
        lowestScore=student['Score:'];
        lowestScoreName=student["Name:"];
        lowestScoreAge=student['Age:'];
      }
    }
      print("Name is :$highestScoreName His score is $highestScore His age is $highestScoreAge");
      print("Name is :$lowestScoreName  His score is $lowestScore  His age is $lowestScoreAge");

      }
}

void calculateAverageScore(List<Map<String,dynamic>>students){
  if(students.isEmpty){
    print("No student add in the list:");
    
  }
  else{
    int num=students.length;
  double total=0;
  for(var student in students){
   total=total+student['Score:'];
  }
  double averageScore=total/num;
  print("The average score is: $averageScore");
  }
}

