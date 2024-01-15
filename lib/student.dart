// student class
class Student {
   // attributes
  String name;
  int age;
  String grade;
  // constructor
  Student(this.name, this.age, this.grade);
}

void main() {
  // Creating an instance of the Student class
  Student newStudent = Student('Annet', 20, "A");

  // Displaying the student's details
  print('Student Details:');
  print('Name: ${newStudent.name}');
  print('Age: ${newStudent.age}');
  print('Grade: ${newStudent.grade}');
}