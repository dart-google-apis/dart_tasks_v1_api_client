library tasks_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_tasks_v1_api/src/console_client.dart';

import "package:google_tasks_v1_api/tasks_v1_api_client.dart";

/** Lets you manage your tasks and task lists. */
class Tasks extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your tasks */
  static const String TASKS_SCOPE = "https://www.googleapis.com/auth/tasks";

  /** OAuth Scope2: View your tasks */
  static const String TASKS_READONLY_SCOPE = "https://www.googleapis.com/auth/tasks.readonly";

  final oauth2.OAuth2Console auth;

  Tasks([oauth2.OAuth2Console this.auth]);
}
