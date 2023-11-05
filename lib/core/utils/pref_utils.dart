import 'dart:convert';
import 'dart:ui';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }

  Future<void> setID(int value) {
    return _sharedPreferences!.setInt('ID', value);
  }

  int getID() {
    try {
      return _sharedPreferences!.getInt('ID') ?? 0;
    } catch (e) {
      return 0;
    }
  }

  Future<void> setUsername(String value) {
    return _sharedPreferences!.setString('username', value);
  }

  String getUsername() {
    try {
      return _sharedPreferences!.getString('username') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setGroupId(int value) {
    return _sharedPreferences!.setInt('groupId', value);
  }

  int getGroupId() {
    try {
      return _sharedPreferences!.getInt('groupId') ?? 0;
    } catch (e) {
      return 0;
    }
  }

  Future<void> setAccessToken(String value) {
    return _sharedPreferences!.setString('accessToken', value);
  }

  String getAccessToken() {
    try {
      return _sharedPreferences!.getString('accessToken') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setTokentype(String value) {
    return _sharedPreferences!.setString('Tokentype', value);
  }

  String getTokentype() {
    try {
      return _sharedPreferences!.getString('Tokentype') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setExpiresIn(int value) {
    return _sharedPreferences!.setInt('expiresIn', value);
  }

  int getExpiresIn() {
    try {
      return _sharedPreferences!.getInt('expiresIn') ?? 0;
    } catch (e) {
      return 0;
    }
  }
}
