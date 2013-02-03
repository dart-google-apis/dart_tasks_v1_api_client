part of tasks_v1_api_client;

class Task {

  /** Completion date of the task (as a RFC 3339 timestamp). This field is omitted if the task has not been completed. */
  String completed;

  /** Flag indicating whether the task has been deleted. The default if False. */
  bool deleted;

  /** Due date of the task (as a RFC 3339 timestamp). Optional. */
  String due;

  /** ETag of the resource. */
  String etag;

  /** Flag indicating whether the task is hidden. This is the case if the task had been marked completed when the task list was last cleared. The default is False. This field is read-only. */
  bool hidden;

  /** Task identifier. */
  String id;

  /** Type of the resource. This is always "tasks#task". */
  String kind;

  /** Collection of links. This collection is read-only. */
  List<TaskLinks> links;

  /** Notes describing the task. Optional. */
  String notes;

  /** Parent task identifier. This field is omitted if it is a top-level task. This field is read-only. Use the "move" method to move the task under a different parent or to the top level. */
  String parent;

  /** String indicating the position of the task among its sibling tasks under the same parent task or at the top level. If this string is greater than another task's corresponding position string according to lexicographical ordering, the task is positioned after the other task under the same parent task (or at the top level). This field is read-only. Use the "move" method to move the task to another position. */
  String position;

  /** URL pointing to this task. Used to retrieve, update, or delete this task. */
  String selfLink;

  /** Status of the task. This is either "needsAction" or "completed". */
  String status;

  /** Title of the task. */
  String title;

  /** Last modification time of the task (as a RFC 3339 timestamp). */
  String updated;

  /** Create new Task from JSON data */
  Task.fromJson(Map json) {
    if (json.containsKey("completed")) {
      completed = json["completed"];
    }
    if (json.containsKey("deleted")) {
      deleted = json["deleted"];
    }
    if (json.containsKey("due")) {
      due = json["due"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("hidden")) {
      hidden = json["hidden"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("links")) {
      links = [];
      json["links"].forEach((item) {
        links.add(new TaskLinks.fromJson(item));
      });
    }
    if (json.containsKey("notes")) {
      notes = json["notes"];
    }
    if (json.containsKey("parent")) {
      parent = json["parent"];
    }
    if (json.containsKey("position")) {
      position = json["position"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for Task */
  Map toJson() {
    var output = new Map();

    if (completed != null) {
      output["completed"] = completed;
    }
    if (deleted != null) {
      output["deleted"] = deleted;
    }
    if (due != null) {
      output["due"] = due;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (hidden != null) {
      output["hidden"] = hidden;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (links != null) {
      output["links"] = new List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (notes != null) {
      output["notes"] = notes;
    }
    if (parent != null) {
      output["parent"] = parent;
    }
    if (position != null) {
      output["position"] = position;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of Task */
  String toString() => JSON.stringify(this.toJson());

}

class TaskLinks {

  /** The description. In HTML speak: Everything between <a> and </a>. */
  String description;

  /** The URL. */
  String link;

  /** Type of the link, e.g. "email". */
  String type;

  /** Create new TaskLinks from JSON data */
  TaskLinks.fromJson(Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for TaskLinks */
  Map toJson() {
    var output = new Map();

    if (description != null) {
      output["description"] = description;
    }
    if (link != null) {
      output["link"] = link;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of TaskLinks */
  String toString() => JSON.stringify(this.toJson());

}

class TaskList {

  /** ETag of the resource. */
  String etag;

  /** Task list identifier. */
  String id;

  /** Type of the resource. This is always "tasks#taskList". */
  String kind;

  /** URL pointing to this task list. Used to retrieve, update, or delete this task list. */
  String selfLink;

  /** Title of the task list. */
  String title;

  /** Last modification time of the task list (as a RFC 3339 timestamp). */
  String updated;

  /** Create new TaskList from JSON data */
  TaskList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for TaskList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of TaskList */
  String toString() => JSON.stringify(this.toJson());

}

class TaskLists {

  /** ETag of the resource. */
  String etag;

  /** Collection of task lists. */
  List<TaskList> items;

  /** Type of the resource. This is always "tasks#taskLists". */
  String kind;

  /** Token that can be used to request the next page of this result. */
  String nextPageToken;

  /** Create new TaskLists from JSON data */
  TaskLists.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new TaskList.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for TaskLists */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of TaskLists */
  String toString() => JSON.stringify(this.toJson());

}

class Tasks {

  /** ETag of the resource. */
  String etag;

  /** Collection of tasks. */
  List<Task> items;

  /** Type of the resource. This is always "tasks#tasks". */
  String kind;

  /** Token used to access the next page of this result. */
  String nextPageToken;

  /** Create new Tasks from JSON data */
  Tasks.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Task.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Tasks */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Tasks */
  String toString() => JSON.stringify(this.toJson());

}

