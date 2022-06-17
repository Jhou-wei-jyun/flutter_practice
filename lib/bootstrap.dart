import 'dart:async';
import 'dart:developer';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttube/app/app.dart';
import 'package:todos_api/todos_api.dart';
import 'package:todos_repository/todos_repository.dart';

Future<void> bootstrap({
  required TodosApi todosApi
  }) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final authenticationRepository = AuthenticationRepository();
  final todosRepository = TodosRepository(todosApi: todosApi);
  await authenticationRepository.user.first;
  runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
            () async => runApp(
          App(
            authenticationRepository: authenticationRepository,
            todosRepository: todosRepository
          )
        ),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
