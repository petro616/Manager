import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/features/task_manager/presentation/widgets/createtask/custom_textform_date.dart';
import 'package:Manager/features/task_manager/presentation/widgets/createtask/custom_textform_desc.dart';
import 'package:Manager/features/task_manager/presentation/widgets/createtask/custom_textform_name.dart';
import 'package:Manager/features/task_manager/presentation/widgets/createtask/priority.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/appbar_made.dart';
import 'package:Manager/features/task_manager/presentation/widgets/updatetask/custom_updatetask_button.dart';

class UpdateTasks extends StatefulWidget {
  final String projectId;
  final String sectionId;
  final String taskId;
  const UpdateTasks(
      {super.key,
      required this.projectId,
      required this.sectionId,
      required this.taskId});

  @override
  State<UpdateTasks> createState() => _UpdateTasksState();
}

class _UpdateTasksState extends State<UpdateTasks> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController nameController;

  late TextEditingController descriptionController;

  late TextEditingController dueDateController;

  String? priority;

  String? sectionId;
  String? taskId;

  String? projectId;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    descriptionController = TextEditingController();
    dueDateController = TextEditingController();
    projectId = widget.projectId;
    sectionId = widget.sectionId;
    taskId = widget.taskId;
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    dueDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomAppbar(
          title: "UPDATE TASK",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              CustomTextformFieldTaskName(controller: nameController),
              SizedBox(height: 18.h),
              CustomTextformFieldTaskDescription(
                  controller: descriptionController),
              SizedBox(height: 18.h),
              CustomTextformFieldDate(
                  controller: dueDateController,
                  onPressed: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 365)),
                    );
                    if (selectedDate != null) {
                      dueDateController.text =
                          "${selectedDate.toLocal()}".split(' ')[0];
                    }
                  }),
              SizedBox(height: 18.h),
              PriorityField(
                  priority: priority,
                  onChanged: (value) {
                    setState(() {
                      priority = value;
                    });
                  }),
              SizedBox(height: 24.h),
              CustomUpdateTaskButton(
                  formKey: formKey,
                  nameController: nameController,
                  descriptionController: descriptionController,
                  projectId: widget.projectId,
                  sectionId: widget.sectionId,
                  priority: priority,
                  taskId: widget.taskId)
            ],
          ),
        ),
      ),
    );
  }
}
