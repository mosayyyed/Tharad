import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../../features/auth/data/models/auth_response_model.dart';

class CacheKeys {
  CacheKeys._();

  static const String profileBox = 'profile_box';
  static const String authBox = 'auth_box';
  static const String profileData = 'profile_data';
  static const String authToken = 'auth_token';
  static const String lastProfileUpdate = 'last_profile_update';
}

class HiveCacheService {
  static final HiveCacheService _instance = HiveCacheService._internal();
  factory HiveCacheService() => _instance;
  HiveCacheService._internal();

  late Box _profileBox;
  late Box _authBox;
  bool _isInitialized = false;

  Future<void> init() async {
    if (_isInitialized) return;

    await Hive.initFlutter();
    _profileBox = await Hive.openBox(CacheKeys.profileBox);
    _authBox = await Hive.openBox(CacheKeys.authBox);
    _isInitialized = true;
  }

  Future<void> cacheToken(String token) async {
    await _authBox.put(CacheKeys.authToken, token);
  }

  String? getCachedToken() {
    return _authBox.get(CacheKeys.authToken) as String?;
  }

  Future<void> removeToken() async {
    await _authBox.delete(CacheKeys.authToken);
  }

  bool hasToken() {
    final token = getCachedToken();
    return token != null && token.isNotEmpty;
  }

  Future<void> cacheProfile(ProfileData profile) async {
    final jsonString = jsonEncode(profile.toJson());
    await _profileBox.put(CacheKeys.profileData, jsonString);
    await _profileBox.put(
      CacheKeys.lastProfileUpdate,
      DateTime.now().toIso8601String(),
    );
  }

  ProfileData? getCachedProfile() {
    final jsonString = _profileBox.get(CacheKeys.profileData) as String?;
    if (jsonString == null) return null;

    try {
      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      return ProfileData.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  Future<void> removeProfile() async {
    await _profileBox.delete(CacheKeys.profileData);
    await _profileBox.delete(CacheKeys.lastProfileUpdate);
  }

  DateTime? getLastProfileUpdate() {
    final dateString = _profileBox.get(CacheKeys.lastProfileUpdate) as String?;
    if (dateString == null) return null;
    return DateTime.tryParse(dateString);
  }

  bool isProfileCacheStale({Duration maxAge = const Duration(hours: 24)}) {
    final lastUpdate = getLastProfileUpdate();
    if (lastUpdate == null) return true;
    return DateTime.now().difference(lastUpdate) > maxAge;
  }

  Future<void> clearAll() async {
    await _profileBox.clear();
    await _authBox.clear();
  }

  Future<void> clearProfileCache() async {
    await _profileBox.clear();
  }
}
