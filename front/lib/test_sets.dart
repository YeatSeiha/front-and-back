import 'dart:io';
void main(){

  dynamic student = ['dara', 'vireak', 'dara', 'dara',  'thida', 'thida'];
  Set student_set = {'dara', 'vireak', 'dara', 'dara',  'thida', 'thida'};
  dynamic student_count = [];
  for(var name in student_set){
    int count = 0;
    for(var item in student){
      if(name == item){
        count++;
      }
    }
    student_count.add({
      'name': name,
      'count': count
    });
  }



  print(student_count);




}