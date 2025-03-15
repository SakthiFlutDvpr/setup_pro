class Employee {
  final String name;
  final String designation;
  final double experience;

  Employee({
    required this.name,
    required this.designation,
    required this.experience,
  });
}

List<Employee> fakeEmployee = [
  Employee(name: "John Doe", designation: "Fake Manager", experience: 3.5),
  Employee(name: "Jane Smith", designation: "Fake Developer", experience: 2.0),
  Employee(name: "Robert Brown", designation: "Fake Analyst", experience: 4.1),
  Employee(name: "Emily Davis", designation: "Fake Designer", experience: 1.8),
  Employee(name: "Michael Wilson", designation: "Fake Tester", experience: 2.5),
];

List<Employee> realEmployee = [
  Employee(
    name: "Alice Johnson",
    designation: "Software Engineer",
    experience: 5.2,
  ),
  Employee(
    name: "David White",
    designation: "Project Manager",
    experience: 6.8,
  ),
  Employee(
    name: "Sophia Martinez",
    designation: "UX Designer",
    experience: 3.7,
  ),
  Employee(
    name: "James Anderson",
    designation: "Data Scientist",
    experience: 4.9,
  ),
  Employee(name: "Olivia Thomas", designation: "QA Engineer", experience: 2.3),
];
