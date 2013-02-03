part of tasks_v1_api_client;

class TasklistsResource extends Resource {

  TasklistsResource(Client client) : super(client) {
  }

  /**
   * Deletes the authenticated user's specified task list.
   *
   * [tasklist] - Task list identifier.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String tasklist, {Map optParams}) {
    var completer = new Completer();
    var url = "users/@me/lists/{tasklist}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the authenticated user's specified task list.
   *
   * [tasklist] - Task list identifier.
   *
   * [optParams] - Additional query parameters
   */
  Future<TaskList> get(String tasklist, {Map optParams}) {
    var completer = new Completer();
    var url = "users/@me/lists/{tasklist}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TaskList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new task list and adds it to the authenticated user's task lists.
   *
   * [request] - TaskList to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<TaskList> insert(TaskList request, {Map optParams}) {
    var completer = new Completer();
    var url = "users/@me/lists";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TaskList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns all the authenticated user's task lists.
   *
   * [maxResults] - Maximum number of task lists returned on one page. Optional. The default is 100.
   *
   * [pageToken] - Token specifying the result page to return. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<TaskLists> list({String maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "users/@me/lists";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TaskLists.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the authenticated user's specified task list. This method supports patch semantics.
   *
   * [request] - TaskList to send in this request
   *
   * [tasklist] - Task list identifier.
   *
   * [optParams] - Additional query parameters
   */
  Future<TaskList> patch(TaskList request, String tasklist, {Map optParams}) {
    var completer = new Completer();
    var url = "users/@me/lists/{tasklist}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TaskList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the authenticated user's specified task list.
   *
   * [request] - TaskList to send in this request
   *
   * [tasklist] - Task list identifier.
   *
   * [optParams] - Additional query parameters
   */
  Future<TaskList> update(TaskList request, String tasklist, {Map optParams}) {
    var completer = new Completer();
    var url = "users/@me/lists/{tasklist}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TaskList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TasksResource extends Resource {

  TasksResource(Client client) : super(client) {
  }

  /**
   * Clears all completed tasks from the specified task list. The affected tasks will be marked as 'hidden' and no longer be returned by default when retrieving all tasks for a task list.
   *
   * [tasklist] - Task list identifier.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> clear(String tasklist, {Map optParams}) {
    var completer = new Completer();
    var url = "lists/{tasklist}/clear";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Deletes the specified task from the task list.
   *
   * [tasklist] - Task list identifier.
   *
   * [task] - Task identifier.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String tasklist, String task, {Map optParams}) {
    var completer = new Completer();
    var url = "lists/{tasklist}/tasks/{task}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the specified task.
   *
   * [tasklist] - Task list identifier.
   *
   * [task] - Task identifier.
   *
   * [optParams] - Additional query parameters
   */
  Future<Task> get(String tasklist, String task, {Map optParams}) {
    var completer = new Completer();
    var url = "lists/{tasklist}/tasks/{task}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Task.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new task on the specified task list.
   *
   * [request] - Task to send in this request
   *
   * [tasklist] - Task list identifier.
   *
   * [parent] - Parent task identifier. If the task is created at the top level, this parameter is omitted. Optional.
   *
   * [previous] - Previous sibling task identifier. If the task is created at the first position among its siblings, this parameter is omitted. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<Task> insert(Task request, String tasklist, {String parent, String previous, Map optParams}) {
    var completer = new Completer();
    var url = "lists/{tasklist}/tasks";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (parent != null) queryParams["parent"] = parent;
    if (previous != null) queryParams["previous"] = previous;
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Task.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns all tasks in the specified task list.
   *
   * [tasklist] - Task list identifier.
   *
   * [completedMax] - Upper bound for a task's completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by completion date.
   *
   * [completedMin] - Lower bound for a task's completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by completion date.
   *
   * [dueMax] - Upper bound for a task's due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by due date.
   *
   * [dueMin] - Lower bound for a task's due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by due date.
   *
   * [maxResults] - Maximum number of task lists returned on one page. Optional. The default is 100.
   *
   * [pageToken] - Token specifying the result page to return. Optional.
   *
   * [showCompleted] - Flag indicating whether completed tasks are returned in the result. Optional. The default is True.
   *
   * [showDeleted] - Flag indicating whether deleted tasks are returned in the result. Optional. The default is False.
   *
   * [showHidden] - Flag indicating whether hidden tasks are returned in the result. Optional. The default is False.
   *
   * [updatedMin] - Lower bound for a task's last modification time (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by last modification time.
   *
   * [optParams] - Additional query parameters
   */
  Future<Tasks> list(String tasklist, {String completedMax, String completedMin, String dueMax, String dueMin, String maxResults, String pageToken, bool showCompleted, bool showDeleted, bool showHidden, String updatedMin, Map optParams}) {
    var completer = new Completer();
    var url = "lists/{tasklist}/tasks";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (completedMax != null) queryParams["completedMax"] = completedMax;
    if (completedMin != null) queryParams["completedMin"] = completedMin;
    if (dueMax != null) queryParams["dueMax"] = dueMax;
    if (dueMin != null) queryParams["dueMin"] = dueMin;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (showCompleted != null) queryParams["showCompleted"] = showCompleted;
    if (showDeleted != null) queryParams["showDeleted"] = showDeleted;
    if (showHidden != null) queryParams["showHidden"] = showHidden;
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (updatedMin != null) queryParams["updatedMin"] = updatedMin;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Tasks.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Moves the specified task to another position in the task list. This can include putting it as a child task under a new parent and/or move it to a different position among its sibling tasks.
   *
   * [tasklist] - Task list identifier.
   *
   * [task] - Task identifier.
   *
   * [parent] - New parent task identifier. If the task is moved to the top level, this parameter is omitted. Optional.
   *
   * [previous] - New previous sibling task identifier. If the task is moved to the first position among its siblings, this parameter is omitted. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<Task> move(String tasklist, String task, {String parent, String previous, Map optParams}) {
    var completer = new Completer();
    var url = "lists/{tasklist}/tasks/{task}/move";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (parent != null) queryParams["parent"] = parent;
    if (previous != null) queryParams["previous"] = previous;
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Task.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the specified task. This method supports patch semantics.
   *
   * [request] - Task to send in this request
   *
   * [tasklist] - Task list identifier.
   *
   * [task] - Task identifier.
   *
   * [optParams] - Additional query parameters
   */
  Future<Task> patch(Task request, String tasklist, String task, {Map optParams}) {
    var completer = new Completer();
    var url = "lists/{tasklist}/tasks/{task}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Task.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the specified task.
   *
   * [request] - Task to send in this request
   *
   * [tasklist] - Task list identifier.
   *
   * [task] - Task identifier.
   *
   * [optParams] - Additional query parameters
   */
  Future<Task> update(Task request, String tasklist, String task, {Map optParams}) {
    var completer = new Completer();
    var url = "lists/{tasklist}/tasks/{task}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (tasklist == null) paramErrors.add("tasklist is required");
    if (tasklist != null) urlParams["tasklist"] = tasklist;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Task.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

