import 'action_results.dart';
import 'action_transport.dart';
import 'ai_provider.dart';
import 'app_limits.dart';
import 'artifact.dart';
import 'daily_task.dart';
import 'job.dart';
import 'params/admin_params.dart';
import 'params/ci_params.dart';
import 'params/gitlab_params.dart';
import 'params/notification_params.dart';
import 'params/system_params.dart';
import 'params/zentao_params.dart';
import 'schedule_info.dart';
import 'zentao_status.dart';

/// Every action as a typed call: the params object in, the decoded result
/// out. A caller never writes an action name or a parameter key — those are
/// spelled here, once, for the dashboard and `fpt_server_mcp` alike.
///
/// A failure is whatever the [ActionTransport] throws; nothing here swallows
/// it.
extension FptActions on ActionTransport {
  // ci.* — each returns the job it queued, not its outcome: watch it through
  // the job endpoints.

  Future<Job> ciBuild(CiBuildParams params) async =>
      Job.fromJson(await invokeAction('ci.build', params.toJson()));

  Future<Job> ciGen([CiGenParams params = const CiGenParams()]) async =>
      Job.fromJson(await invokeAction('ci.gen', params.toJson()));

  Future<Job> ciReposts(CiRepostsParams params) async =>
      Job.fromJson(await invokeAction('ci.reposts', params.toJson()));

  Future<Job> ciReplace(CiReplaceParams params) async =>
      Job.fromJson(await invokeAction('ci.replace', params.toJson()));

  Future<Job> ciClean([CiCleanParams params = const CiCleanParams()]) async =>
      Job.fromJson(await invokeAction('ci.clean', params.toJson()));

  // gitlab.* — a review or translation runs in the background; follow it
  // through its history record (see GitlabRunStarted).

  Future<GitlabRunStarted> gitlabReview(GitlabReviewParams params) async =>
      GitlabRunStarted.fromJson(
        await invokeAction('gitlab.review', params.toJson()),
      );

  Future<GitlabRunStarted> gitlabTranslateArb(
    GitlabTranslateArbParams params,
  ) async => GitlabRunStarted.fromJson(
    await invokeAction('gitlab.translateArb', params.toJson()),
  );

  Future<ActionMessage> gitlabReviewHistoryDelete(
    HistoryDeleteParams params,
  ) async => ActionMessage.fromJson(
    await invokeAction('gitlab.review.history.delete', params.toJson()),
  );

  Future<ActionMessage> gitlabTranslateArbHistoryDelete(
    HistoryDeleteParams params,
  ) async => ActionMessage.fromJson(
    await invokeAction('gitlab.translateArb.history.delete', params.toJson()),
  );

  // admin.aiProvider.* — which AI backend serves requests.

  Future<AiProviderInfo> aiProviderGet() async => AiProviderInfo.fromJson(
    await invokeAction('admin.aiProvider.get', const {}),
  );

  Future<AiProviderInfo> aiProviderSet(AiProviderSetParams params) async =>
      AiProviderInfo.fromJson(
        await invokeAction('admin.aiProvider.set', params.toJson()),
      );

  // limits.* — the knobs an admin can turn without a deploy.

  Future<LimitsInfo> limitsGet() async =>
      LimitsInfo.fromJson(await invokeAction('limits.get', const {}));

  Future<LimitsInfo> limitsSet(LimitsSetParams params) async =>
      LimitsInfo.fromJson(await invokeAction('limits.set', params.toJson()));

  // schedule.* — the working calendar the scheduled jobs follow.

  Future<ScheduleInfo> scheduleGet() async =>
      ScheduleInfo.fromJson(await invokeAction('schedule.get', const {}));

  Future<ScheduleInfo> scheduleSet(ScheduleSetParams params) async =>
      ScheduleInfo.fromJson(
        await invokeAction('schedule.set', params.toJson()),
      );

  // zentao.*

  Future<ZentaoStatus> zentaoStatus() async =>
      ZentaoStatus.fromJson(await invokeAction('zentao.status', const {}));

  Future<ZentaoReportStarted> zentaoReportStart([
    ZentaoReportStartParams params = const ZentaoReportStartParams(),
  ]) async => ZentaoReportStarted.fromJson(
    await invokeAction('zentao.report.start', params.toJson()),
  );

  Future<DailyTask> zentaoReportGet(ZentaoTaskParams params) async =>
      DailyTask.parseJson(
        await invokeAction('zentao.report.get', params.toJson()),
      );

  Future<ActionMessage> zentaoReportEdit(ZentaoReportEditParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('zentao.report.edit', params.toJson()),
      );

  Future<ActionMessage> zentaoReportFinish(ZentaoTaskParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('zentao.report.finish', params.toJson()),
      );

  Future<ActionMessage> zentaoReportClose(ZentaoTaskParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('zentao.report.close', params.toJson()),
      );

  Future<ActionMessage> zentaoLink(ZentaoLinkParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('zentao.link', params.toJson()),
      );

  Future<ActionMessage> zentaoUnlink() async =>
      ActionMessage.fromJson(await invokeAction('zentao.unlink', const {}));

  Future<ActionMessage> zentaoSetProject(ZentaoProjectParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('zentao.config.setProject', params.toJson()),
      );

  Future<ActionMessage> zentaoSetExecution(
    ZentaoExecutionParams params,
  ) async => ActionMessage.fromJson(
    await invokeAction('zentao.config.setExecution', params.toJson()),
  );

  // admin.apiKeys.*

  Future<ApiKeyList> apiKeysList() async =>
      ApiKeyList.fromJson(await invokeAction('admin.apiKeys.list', const {}));

  Future<ApiKeyCreated> apiKeysAdd(ApiKeyAddParams params) async =>
      ApiKeyCreated.fromJson(
        await invokeAction('admin.apiKeys.add', params.toJson()),
      );

  Future<ActionMessage> apiKeysEdit(ApiKeyEditParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('admin.apiKeys.edit', params.toJson()),
      );

  Future<ActionMessage> apiKeysRemove(ApiKeyRemoveParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('admin.apiKeys.remove', params.toJson()),
      );

  /// Ends this session's key if it came from Discord sign-in.
  Future<ActionMessage> apiKeysSignOut() async => ActionMessage.fromJson(
    await invokeAction('admin.apiKeys.signOut', const {}),
  );

  // admin.owners.*

  Future<OwnerList> ownersList() async =>
      OwnerList.fromJson(await invokeAction('admin.owners.list', const {}));

  Future<ActionMessage> ownersAdd(OwnerParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('admin.owners.add', params.toJson()),
      );

  Future<ActionMessage> ownersRemove(OwnerParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('admin.owners.remove', params.toJson()),
      );

  // admin.logs.tail

  Future<LogsTail> logsTail([
    LogsTailParams params = const LogsTailParams(),
  ]) async =>
      LogsTail.fromJson(await invokeAction('admin.logs.tail', params.toJson()));

  // notifications.*

  Future<NotificationList> notificationsList() async =>
      NotificationList.fromJson(
        await invokeAction('notifications.list', const {}),
      );

  Future<ActionMessage> notificationsMarkRead([
    MarkNotificationsReadParams params = const MarkNotificationsReadParams(),
  ]) async => ActionMessage.fromJson(
    await invokeAction('notifications.markRead', params.toJson()),
  );

  Future<ActionMessage> notificationsAnnounce(
    AnnounceNotificationParams params,
  ) async => ActionMessage.fromJson(
    await invokeAction('notifications.announce', params.toJson()),
  );

  Future<ActionMessage> notificationsRemove(
    RemoveNotificationParams params,
  ) async => ActionMessage.fromJson(
    await invokeAction('notifications.remove', params.toJson()),
  );

  // system.* / cron.* / p2p.*

  Future<List<HiveBoxInfo>> hiveList() async {
    final body = await invokeAction('system.hive.list', const {});
    return [
      for (final box in body['boxes'] as List<dynamic>? ?? const [])
        HiveBoxInfo.fromJson(box as Map<String, dynamic>),
    ];
  }

  /// Files sent "via server", as the server lists them.
  Future<List<ArtifactFile>> p2pFilesList() async {
    final body = await invokeAction('p2p.files.list', const {});
    return [
      for (final file in body['files'] as List<dynamic>? ?? const [])
        ArtifactFile.fromJson(file as Map<String, dynamic>),
    ];
  }

  Future<ActionMessage> hotReload() async =>
      ActionMessage.fromJson(await invokeAction('system.hotReload', const {}));

  Future<ActionMessage> restart([
    RestartParams params = const RestartParams(),
  ]) async => ActionMessage.fromJson(
    await invokeAction('system.restart', params.toJson()),
  );

  Future<ActionMessage> hiveClean(HiveBoxCleanParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('system.hive.clean', params.toJson()),
      );

  Future<ActionMessage> cronRun(CronRunParams params) async =>
      ActionMessage.fromJson(await invokeAction('cron.run', params.toJson()));

  Future<ActionMessage> p2pFilesDelete(P2pFilesDeleteParams params) async =>
      ActionMessage.fromJson(
        await invokeAction('p2p.files.delete', params.toJson()),
      );
}
