import 'package:flutter/material.dart';
import 'package:setup_pro/model/employee_model.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DataCardWidget extends StatelessWidget {
  const DataCardWidget({super.key, required this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: Colors.brown),
      title: Text(employee.name),
      subtitle: Text(employee.designation),
      trailing: Text(employee.experience.toString()),
    );
  }
}

class SkeletonCardWidget extends StatelessWidget {
  const SkeletonCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Bone.circle(),
      title: Bone.text(),
      subtitle: Bone.text(words: 1),
      trailing: Bone.text(words: 1),
    );
  }
}
