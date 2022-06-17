import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttube/app/app.dart';
import 'package:fluttube/generated/l10n.dart';
import 'package:fluttube/todos_overview/todos_overview.dart';

@visibleForTesting
enum TodosOverviewOption { toggleAll, clearCompleted, logout }

class TodosOverviewOptionsButton extends StatelessWidget {
  const TodosOverviewOptionsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    
    final todos = context.select((TodosOverviewBloc bloc) => bloc.state.todos);
    final hasTodos = todos.isNotEmpty;
    final completedTodosAmount = todos.where((todo) => todo.isCompleted).length;

    return PopupMenuButton<TodosOverviewOption>(
      onSelected: (value) {
        switch (value) {
          case TodosOverviewOption.toggleAll:
            context.read<TodosOverviewBloc>()
              .add(const TodosOverviewToggleAllRequested());
            break;
          case TodosOverviewOption.clearCompleted:
            context.read<TodosOverviewBloc>()
              .add(const TodosOverviewClearCompletedRequested());
            break;
          case TodosOverviewOption.logout:
            context.read<AppBloc>()
              .add(const AppLogoutRequested());
            break;
        }
      },
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: TodosOverviewOption.toggleAll,
            enabled: hasTodos,
            child: Text(
              completedTodosAmount == todos.length
                  ? l10n.todosOverviewOptionsMarkAllIncomplete
                  : l10n.todosOverviewOptionsMarkAllComplete,
            ),
          ),
          PopupMenuItem(
            value: TodosOverviewOption.clearCompleted,
            enabled: hasTodos && completedTodosAmount > 0,
            child: Text(l10n.todosOverviewOptionsClearCompleted),
          ),
          const PopupMenuItem(
            value: TodosOverviewOption.logout,
            child: Text('logout'),
          ),
        ];
      },
      icon: const Icon(Icons.more_vert_rounded),
    );
  }
}