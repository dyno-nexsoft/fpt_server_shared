import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_task.freezed.dart';

/// Actions available on a task, derived from its Zentao status.
///
/// This is a domain rule, not a rendering detail: a REST client needs the same
/// answer the Discord buttons do.
enum DailyTaskAction { edit, finish, close }

/// A Zentao daily-report task, projected from the untyped API response.
@freezed
class DailyTask with _$DailyTask {
  const DailyTask._();

  const factory DailyTask({
    required int id,
    required String name,

    /// Description as Markdown (converted from the HTML Zentao stores).
    required String description,

    /// Raw Zentao status: `wait`, `doing`, `done`, `closed`, …
    required String status,

    /// Display name of the assignee.
    required String assignee,
    required DateTime lastEdited,
    required String url,
  }) = _DailyTask;

  bool get isDone => status == 'done';
  bool get isInProgress => status == 'doing';

  /// What the user may do next.
  ///
  /// Mirrors the previous button conditions exactly: edit while not done,
  /// finish while in progress, close once done.
  Set<DailyTaskAction> get availableActions => {
    if (!isDone) DailyTaskAction.edit,
    if (isInProgress) DailyTaskAction.finish,
    if (isDone) DailyTaskAction.close,
  };

  Map<String, Object?> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'status': status,
    'assignee': assignee,
    'last_edited': lastEdited.toIso8601String(),
    'url': url,
    'available_actions': [for (final action in availableActions) action.name],
  };
}
