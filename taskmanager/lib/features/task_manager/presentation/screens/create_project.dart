import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/features/task_manager/presentation/widgets/createproject/custom_createproject_button.dart';
import 'package:Manager/features/task_manager/presentation/widgets/createproject/custom_textform_field.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/appbar_made.dart';

class CreateProject extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  CreateProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomAppbar(
          title: "CREATE PROJECT",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 9.h),
              CustomTextformFieldProject(controller: nameController),
              SizedBox(height: 18.h),
              CustomCreateprojectButton(
                  formkey: formKey, controller: nameController)
            ],
          ),
        ),
      ),
    );
  }
}
