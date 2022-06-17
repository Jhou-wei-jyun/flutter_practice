import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'todo.g.dart';

@immutable
@JsonSerializable()
class Todo extends Equatable {

  /// {@macrotodo}
  Todo({
    String? id,
    required this.title,
    this.description = '',
    this.isCompleted = false,
  }) : assert(
        id == null || id.isNotEmpty,
        'id can not be null and should be empty',
      ),
      id = id ?? const Uuid().v4();

  final String id;
  final String title;
  final String description;
  final bool isCompleted;

  Todo copyWith({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$TodoToJson`.
  Map<String, dynamic> toJson() => _$TodoToJson(this);

  @override
  List<Object> get props => [id, title, description, isCompleted];

}