// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object /usr/share/dbus-1/interfaces/org.freedesktop.ModemManager1.Modem.xml

import 'dart:io';
import 'package:dbus/dbus.dart';

/// Signal data for org.freedesktop.ModemManager1.Modem.StateChanged.
class OrgFreedesktopModemManager1ModemStateChanged extends DBusSignal {
  int get old => values[0].asInt32();
  int get new_ => values[1].asInt32();
  int get reason => values[2].asUint32();

  OrgFreedesktopModemManager1ModemStateChanged(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

class OrgFreedesktopModemManager1Modem extends DBusRemoteObject {
  /// Stream of org.freedesktop.ModemManager1.Modem.StateChanged signals.
  late final Stream<OrgFreedesktopModemManager1ModemStateChanged> stateChanged;

  OrgFreedesktopModemManager1Modem(DBusClient client, String destination, {DBusObjectPath path = const DBusObjectPath.unchecked('/')}) : super(client, name: destination, path: path) {
    stateChanged = DBusRemoteObjectSignalStream(object: this, interface: 'org.freedesktop.ModemManager1.Modem', name: 'StateChanged', signature: DBusSignature('iiu')).asBroadcastStream().map((signal) => OrgFreedesktopModemManager1ModemStateChanged(signal));
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Sim
  Future<DBusObjectPath> getSim() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Sim', signature: DBusSignature('o'));
    return value.asObjectPath();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.SimSlots
  Future<List<DBusObjectPath>> getSimSlots() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'SimSlots', signature: DBusSignature('ao'));
    return value.asObjectPathArray().toList();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.PrimarySimSlot
  Future<int> getPrimarySimSlot() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'PrimarySimSlot', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Bearers
  Future<List<DBusObjectPath>> getBearers() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Bearers', signature: DBusSignature('ao'));
    return value.asObjectPathArray().toList();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.SupportedCapabilities
  Future<List<int>> getSupportedCapabilities() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'SupportedCapabilities', signature: DBusSignature('au'));
    return value.asUint32Array().toList();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.CurrentCapabilities
  Future<int> getCurrentCapabilities() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'CurrentCapabilities', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.MaxBearers
  Future<int> getMaxBearers() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'MaxBearers', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.MaxActiveBearers
  Future<int> getMaxActiveBearers() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'MaxActiveBearers', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.MaxActiveMultiplexedBearers
  Future<int> getMaxActiveMultiplexedBearers() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'MaxActiveMultiplexedBearers', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Manufacturer
  Future<String> getManufacturer() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Manufacturer', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Model
  Future<String> getModel() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Model', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Revision
  Future<String> getRevision() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Revision', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.CarrierConfiguration
  Future<String> getCarrierConfiguration() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'CarrierConfiguration', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.CarrierConfigurationRevision
  Future<String> getCarrierConfigurationRevision() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'CarrierConfigurationRevision', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.HardwareRevision
  Future<String> getHardwareRevision() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'HardwareRevision', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.DeviceIdentifier
  Future<String> getDeviceIdentifier() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'DeviceIdentifier', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Device
  Future<String> getDevice() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Device', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Physdev
  Future<String> getPhysdev() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Physdev', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Drivers
  Future<List<String>> getDrivers() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Drivers', signature: DBusSignature('as'));
    return value.asStringArray().toList();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Plugin
  Future<String> getPlugin() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Plugin', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.PrimaryPort
  Future<String> getPrimaryPort() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'PrimaryPort', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Ports
  Future<List<List<DBusValue>>> getPorts() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'Ports', signature: DBusSignature('a(su)'));
    return value.asArray().map((child) => child.asStruct()).toList();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.EquipmentIdentifier
  Future<String> getEquipmentIdentifier() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'EquipmentIdentifier', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.UnlockRequired
  Future<int> getUnlockRequired() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'UnlockRequired', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.UnlockRetries
  Future<Map<int, int>> getUnlockRetries() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'UnlockRetries', signature: DBusSignature('a{uu}'));
    return value.asDict().map((key, value) => MapEntry(key.asUint32(), value.asUint32()));
  }

  /// Gets org.freedesktop.ModemManager1.Modem.State
  Future<int> getState() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'State', signature: DBusSignature('i'));
    return value.asInt32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.StateFailedReason
  Future<int> getStateFailedReason() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'StateFailedReason', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.AccessTechnologies
  Future<int> getAccessTechnologies() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'AccessTechnologies', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.SignalQuality
  Future<List<DBusValue>> getSignalQuality() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'SignalQuality', signature: DBusSignature('(ub)'));
    return value.asStruct();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.OwnNumbers
  Future<List<String>> getOwnNumbers() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'OwnNumbers', signature: DBusSignature('as'));
    return value.asStringArray().toList();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.PowerState
  Future<int> getPowerState() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'PowerState', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.SupportedModes
  Future<List<List<DBusValue>>> getSupportedModes() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'SupportedModes', signature: DBusSignature('a(uu)'));
    return value.asArray().map((child) => child.asStruct()).toList();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.CurrentModes
  Future<List<DBusValue>> getCurrentModes() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'CurrentModes', signature: DBusSignature('(uu)'));
    return value.asStruct();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.SupportedBands
  Future<List<int>> getSupportedBands() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'SupportedBands', signature: DBusSignature('au'));
    return value.asUint32Array().toList();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.CurrentBands
  Future<List<int>> getCurrentBands() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'CurrentBands', signature: DBusSignature('au'));
    return value.asUint32Array().toList();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.SupportedIpFamilies
  Future<int> getSupportedIpFamilies() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem', 'SupportedIpFamilies', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.Enable()
  Future<void> callEnable(bool enable, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem', 'Enable', [DBusBoolean(enable)], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.ListBearers()
  Future<List<DBusObjectPath>> callListBearers({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('org.freedesktop.ModemManager1.Modem', 'ListBearers', [], replySignature: DBusSignature('ao'), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asObjectPathArray().toList();
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.CreateBearer()
  Future<DBusObjectPath> callCreateBearer(Map<String, DBusValue> properties, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('org.freedesktop.ModemManager1.Modem', 'CreateBearer', [DBusDict.stringVariant(properties)], replySignature: DBusSignature('o'), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asObjectPath();
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.DeleteBearer()
  Future<void> callDeleteBearer(DBusObjectPath bearer, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem', 'DeleteBearer', [bearer], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.Reset()
  Future<void> callReset({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem', 'Reset', [], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.FactoryReset()
  Future<void> callFactoryReset(String code, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem', 'FactoryReset', [DBusString(code)], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.SetPowerState()
  Future<void> callSetPowerState(int state, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem', 'SetPowerState', [DBusUint32(state)], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.SetCurrentCapabilities()
  Future<void> callSetCurrentCapabilities(int capabilities, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem', 'SetCurrentCapabilities', [DBusUint32(capabilities)], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.SetCurrentModes()
  Future<void> callSetCurrentModes(List<DBusValue> modes, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem', 'SetCurrentModes', [DBusStruct(modes)], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.SetCurrentBands()
  Future<void> callSetCurrentBands(List<int> bands, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem', 'SetCurrentBands', [DBusArray.uint32(bands)], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.SetPrimarySimSlot()
  Future<void> callSetPrimarySimSlot(int sim_slot, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem', 'SetPrimarySimSlot', [DBusUint32(sim_slot)], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.GetCellInfo()
  Future<List<Map<String, DBusValue>>> callGetCellInfo({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('org.freedesktop.ModemManager1.Modem', 'GetCellInfo', [], replySignature: DBusSignature('aa{sv}'), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asArray().map((child) => child.asStringVariantDict()).toList();
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.Command()
  Future<String> callCommand(String cmd, int timeout, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('org.freedesktop.ModemManager1.Modem', 'Command', [DBusString(cmd), DBusUint32(timeout)], replySignature: DBusSignature('s'), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }
}
