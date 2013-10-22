library tasks_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_tasks_v1_api/src/browser_client.dart';
import "package:google_tasks_v1_api/tasks_v1_api_client.dart";

/** Lets you manage your tasks and task lists. */
class Tasks extends Client with BrowserClient {

  /** OAuth Scope2: Manage your tasks */
  static const String TASKS_SCOPE = "https://www.googleapis.com/auth/tasks";

  /** OAuth Scope2: View your tasks */
  static const String TASKS_READONLY_SCOPE = "https://www.googleapis.com/auth/tasks.readonly";

  final oauth.OAuth2 auth;

  Tasks([oauth.OAuth2 this.auth]);
}
