// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Title`
  String get todosOverviewAppBarTitle {
    return Intl.message(
      'Title',
      name: 'todosOverviewAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get todosOverviewErrorSnackbarText {
    return Intl.message(
      'Error',
      name: 'todosOverviewErrorSnackbarText',
      desc: '',
      args: [],
    );
  }

  /// `Udo`
  String get todosOverviewUndoDeletionButtonText {
    return Intl.message(
      'Udo',
      name: 'todosOverviewUndoDeletionButtonText',
      desc: '',
      args: [],
    );
  }

  /// `is Empty`
  String get todosOverviewEmptyText {
    return Intl.message(
      'is Empty',
      name: 'todosOverviewEmptyText',
      desc: '',
      args: [],
    );
  }

  /// `clear Completed`
  String get todosOverviewOptionsClearCompleted {
    return Intl.message(
      'clear Completed',
      name: 'todosOverviewOptionsClearCompleted',
      desc: '',
      args: [],
    );
  }

  /// `all Incomplete`
  String get todosOverviewOptionsMarkAllIncomplete {
    return Intl.message(
      'all Incomplete',
      name: 'todosOverviewOptionsMarkAllIncomplete',
      desc: '',
      args: [],
    );
  }

  /// `all complete`
  String get todosOverviewOptionsMarkAllComplete {
    return Intl.message(
      'all complete',
      name: 'todosOverviewOptionsMarkAllComplete',
      desc: '',
      args: [],
    );
  }

  /// `tooltip`
  String get todosOverviewFilterTooltip {
    return Intl.message(
      'tooltip',
      name: 'todosOverviewFilterTooltip',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get todosOverviewFilterAll {
    return Intl.message(
      'All',
      name: 'todosOverviewFilterAll',
      desc: '',
      args: [],
    );
  }

  /// `ActiveOnly`
  String get todosOverviewFilterActiveOnly {
    return Intl.message(
      'ActiveOnly',
      name: 'todosOverviewFilterActiveOnly',
      desc: '',
      args: [],
    );
  }

  /// `CompletedOnly`
  String get todosOverviewFilterCompletedOnly {
    return Intl.message(
      'CompletedOnly',
      name: 'todosOverviewFilterCompletedOnly',
      desc: '',
      args: [],
    );
  }

  /// `Stat`
  String get statsAppBarTitle {
    return Intl.message(
      'Stat',
      name: 'statsAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `CompletedTodo`
  String get statsCompletedTodoCountLabel {
    return Intl.message(
      'CompletedTodo',
      name: 'statsCompletedTodoCountLabel',
      desc: '',
      args: [],
    );
  }

  /// `ActiveTodo`
  String get statsActiveTodoCountLabel {
    return Intl.message(
      'ActiveTodo',
      name: 'statsActiveTodoCountLabel',
      desc: '',
      args: [],
    );
  }

  /// `addTodo`
  String get editTodoAddAppBarTitle {
    return Intl.message(
      'add Todo',
      name: 'editTodoAddAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `editTodo`
  String get editTodoEditAppBarTitle {
    return Intl.message(
      'edit Todo',
      name: 'editTodoEditAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `save button`
  String get editTodoSaveButtonTooltip {
    return Intl.message(
      'save button',
      name: 'editTodoSaveButtonTooltip',
      desc: '',
      args: [],
    );
  }

  /// `title`
  String get editTodoTitleLabel {
    return Intl.message(
      'title',
      name: 'editTodoTitleLabel',
      desc: '',
      args: [],
    );
  }

  /// `description`
  String get editTodoDescriptionLabel {
    return Intl.message(
      'description',
      name: 'editTodoDescriptionLabel',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
