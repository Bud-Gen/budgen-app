import 'package:mobx/mobx.dart';
import 'package:package_info_plus/package_info_plus.dart';
part 'settings_store.g.dart';

class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store {
  @observable
  String versionNumber = "";

  @action
  Future<void> onInit() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    versionNumber = packageInfo.version;
  }
}
