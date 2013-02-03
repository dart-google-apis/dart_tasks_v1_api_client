part of tasks_v1_api_console;

/** Client to access the tasks v1 API */
/** Lets you manage your tasks and task lists. */
class Tasks extends ConsoleClient {

  TasklistsResource _tasklists;
  TasklistsResource get tasklists => _tasklists;
  TasksResource _tasks;
  TasksResource get tasks => _tasks;

  /** OAuth Scope2: Manage your tasks */
  static const String TASKS_SCOPE = "https://www.googleapis.com/auth/tasks";

  /** OAuth Scope2: View your tasks */
  static const String TASKS_READONLY_SCOPE = "https://www.googleapis.com/auth/tasks.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Tasks([Object auth]) : super(auth) {
    basePath = "/tasks/v1/";
    rootUrl = "https://www.googleapis.com:443/";
    _tasklists = new TasklistsResource(this);
    _tasks = new TasksResource(this);
  }
}
