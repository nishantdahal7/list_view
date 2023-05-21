import 'package:flutter/material.dart';

import '../model/student.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  final gap = const SizedBox(height: 8);
  List<String> cities = [
    "Kathmandu",
    "Lalitpur",
    "Bhaktapur",
    "Pokhara",
  ];

  List<Student> lstStudent = [];

  // Controllers for TextFormFields
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();
  final addressController = TextEditingController();

  String? selectedCity;
  String? gender;
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student View'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Form(
          key: key,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter first name';
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter last name';
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter age';
                    }
                    return null;
                  },
                ),
                gap,
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Select gender'),
                ),
                // Create radio button for gender
                RadioListTile(
                  title: const Text('Male'),
                  value: 'Male',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Female'),
                  value: 'Female',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Others'),
                  value: 'Others',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                gap,
                TextFormField(
                  controller: addressController,
                  maxLines: 4,
                  decoration: const InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter address';
                    }
                    return null;
                  },
                ),
                gap,
                DropdownButtonFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'Please select city';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'City',
                    border: OutlineInputBorder(),
                  ),
                  items: cities
                      .map(
                        (city) => DropdownMenuItem(
                          value: city,
                          child: Text(city),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCity = value;
                    });
                  },
                ),
                gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        setState(() {
                          lstStudent.add(Student(
                            fname: firstNameController.text,
                            lname: lastNameController.text,
                            age: int.parse(ageController.text),
                            address: addressController.text,
                            gender: gender,
                            city: selectedCity,
                          ));
                        });
                        //Create a student object and add it to List of students
                      }
                    },
                    child: const Text('Add Student'),
                  ),
                ),
                gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/outputRoute',
                        arguments: lstStudent,
                      );
                    },
                    child: const Text('View Students'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
