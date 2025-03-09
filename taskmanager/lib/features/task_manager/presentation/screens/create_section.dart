import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/features/task_manager/presentation/widgets/createsection/custom_createsection_button.dart';
import 'package:Manager/features/task_manager/presentation/widgets/createsection/custom_textform_field.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/appbar_made.dart';

class CreateSection extends StatelessWidget {
  final String projectId;
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  CreateSection({super.key, required this.projectId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomAppbar(
          title: "CREATE SECTION",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 9.h),
              CustomTextformFieldSection(controller: nameController),
              SizedBox(height: 18.h),
              CustomCreateSectionButton(
                  formkey: formKey,
                  controller: nameController,
                  projectId: projectId)
            ],
          ),
        ),
      ),
    );
  }
}
