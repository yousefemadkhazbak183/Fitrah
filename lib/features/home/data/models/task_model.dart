import 'package:equatable/equatable.dart';

class TaskModel extends Equatable {
  final String id;
  final String title;
  final String subTitle;
  final bool isCompleted;
  final String iconPath; // عشان نحط أيقونة الصلاة أو القرآن زي الصورة

  const TaskModel({
    required this.id,
    required this.title,
    required this.subTitle,
    this.isCompleted = false,
    this.iconPath = '',
  });

  // دي أهم ميزة للسينيور: بتسمحلك تغير حالة المهمة من غير ما تعدل في الكائن الأصلي
  TaskModel copyWith({
    String? id,
    String? title,
    String? subTitle,
    bool? isCompleted,
    String? iconPath,
  }) {
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      isCompleted: isCompleted ?? this.isCompleted,
      iconPath: iconPath ?? this.iconPath,
    );
  }

  @override
  List<Object?> get props => [id, title, subTitle, isCompleted, iconPath];
}
