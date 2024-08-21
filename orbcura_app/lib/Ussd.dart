// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object /usr/share/dbus-1/interfaces/org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd.xml

import 'dart:io';
import 'package:dbus/dbus.dart';

class OrgFreedesktopModemManager1ModemModem3gppUssd extends DBusRemoteObject {
  OrgFreedesktopModemManager1ModemModem3gppUssd(DBusClient client, String destination, {DBusObjectPath path = const DBusObjectPath.unchecked('/')}) : super(client, name: destination, path: path);

  /// Gets org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd.State
  Future<int> getState() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd', 'State', signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd.NetworkNotification
  Future<String> getNetworkNotification() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd', 'NetworkNotification', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd.NetworkRequest
  Future<String> getNetworkRequest() async {
    var value = await getProperty('org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd', 'NetworkRequest', signature: DBusSignature('s'));
    return value.asString();
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd.Initiate()
  Future<String> callInitiate(String command, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd', 'Initiate', [DBusString(command)], replySignature: DBusSignature('s'), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd.Respond()
  Future<String> callRespond(String response, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd', 'Respond', [DBusString(response)], replySignature: DBusSignature('s'), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }

  /// Invokes org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd.Cancel()
  Future<void> callCancel({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd', 'Cancel', [], replySignature: DBusSignature(''), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }
}
