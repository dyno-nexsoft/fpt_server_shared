import 'action_results.dart';
import 'action_transport.dart';
import 'params/admin_params.dart';
import 'params/notification_params.dart';
import 'params/system_params.dart';

/// Every action as a typed call: the params object in, the decoded result
/// out. A caller never writes an action name or a parameter key — those are
/// spelled here, once, for the dashboard and `fpt_server_mcp` alike.
///
/// A failure is whatever the [ActionTransport] throws; nothing here swallows
/// it.
extension FptActions on ActionTransport {
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
