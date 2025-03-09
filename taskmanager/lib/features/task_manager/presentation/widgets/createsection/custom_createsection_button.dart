import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/cubit/sections_cubit.dart';

class CustomCreateSectionButton extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  final TextEditingController controller;
  final String projectId;
  const CustomCreateSectionButton(
      {super.key,
      required this.formkey,
      required this.controller,
      required this.projectId});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 150.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
      color: const Color.fromARGB(255, 177, 183, 184),
      onPressed: () {
        if (formkey.currentState!.validate()) {
          context.read<SectionsCubit>().createSection(
              SectionsEntities(
                  id: null, name: controller.text, project_id: projectId),
              projectId);
          Navigator.pop(context);
        }
      },
      child: Text(
        "CREATE",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
