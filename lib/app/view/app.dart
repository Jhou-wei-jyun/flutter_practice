import 'package:authentication_repository/authentication_repository.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttube/app/app.dart';
import 'package:fluttube/home/home.dart';
import 'package:fluttube/generated/l10n.dart';
import 'package:fluttube/login/logIn.dart';
import 'package:fluttube/theme/theme.dart';
import 'package:todos_repository/todos_repository.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required AuthenticationRepository authenticationRepository,
    required TodosRepository todosRepository,
  })  : _authenticationRepository = authenticationRepository,
        _todosRepository = todosRepository,
        super(key: key);

  final AuthenticationRepository _authenticationRepository;
  final TodosRepository _todosRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _authenticationRepository),
        RepositoryProvider.value(value: _todosRepository),
      ],
      child: BlocProvider(
        create: (_) => AppBloc(
            authenticationRepository: _authenticationRepository
        ),
        child: const AppView(),
      ),
    );
    // return RepositoryProvider.value(
    //   value: _authenticationRepository,
    //   child: BlocProvider(
    //     create: (_) => AppBloc(
    //       authenticationRepository: _authenticationRepository
    //     ),
    //     child: const AppView(),
    //   ),
    // );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      localizationsDelegates: const [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}
List<Page> onGenerateAppViewPages(
    AppStatus status,
    List<Page> pages,
    ) {
  return [
    if (status == AppStatus.unauthenticated) const MaterialPage(child: LoginPage()),
    if (status == AppStatus.authenticated) const MaterialPage(child: HomePage()),
  ];
}