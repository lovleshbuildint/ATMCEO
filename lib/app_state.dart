import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _userId = await secureStorage.getString('ff_userId') ?? _userId;
    });
    await _safeInitAsync(() async {
      _token = await secureStorage.getString('ff_token') ?? _token;
    });
    await _safeInitAsync(() async {
      _noOfMachinesDown =
          await secureStorage.getString('ff_noOfMachinesDown') ??
              _noOfMachinesDown;
    });
    await _safeInitAsync(() async {
      _noOfMachineTransactionDip =
          await secureStorage.getString('ff_noOfMachineTransactionDip') ??
              _noOfMachineTransactionDip;
    });
    await _safeInitAsync(() async {
      _totalMachinesManaged =
          await secureStorage.getString('ff_totalMachinesManaged') ??
              _totalMachinesManaged;
    });
    await _safeInitAsync(() async {
      _visibilityState =
          await secureStorage.getBool('ff_visibilityState') ?? _visibilityState;
    });
    await _safeInitAsync(() async {
      _atmId = await secureStorage.getString('ff_atmId') ?? _atmId;
    });
    await _safeInitAsync(() async {
      _atmInfoState =
          await secureStorage.getBool('ff_atmInfoState') ?? _atmInfoState;
    });
    await _safeInitAsync(() async {
      _awardState = await secureStorage.getBool('ff_awardState') ?? _awardState;
    });
    await _safeInitAsync(() async {
      _targetIncState =
          await secureStorage.getBool('ff_targetIncState') ?? _targetIncState;
    });
    await _safeInitAsync(() async {
      _filter1 = await secureStorage.getBool('ff_filter1') ?? _filter1;
    });
    await _safeInitAsync(() async {
      _filter2 = await secureStorage.getBool('ff_filter2') ?? _filter2;
    });
    await _safeInitAsync(() async {
      _filter3 = await secureStorage.getBool('ff_filter3') ?? _filter3;
    });
    await _safeInitAsync(() async {
      _filter4 = await secureStorage.getBool('ff_filter4') ?? _filter4;
    });
    await _safeInitAsync(() async {
      _filter5 = await secureStorage.getBool('ff_filter5') ?? _filter5;
    });
    await _safeInitAsync(() async {
      _filter1value =
          await secureStorage.getString('ff_filter1value') ?? _filter1value;
    });
    await _safeInitAsync(() async {
      _filter2value =
          await secureStorage.getString('ff_filter2value') ?? _filter2value;
    });
    await _safeInitAsync(() async {
      _filter3value =
          await secureStorage.getString('ff_filter3value') ?? _filter3value;
    });
    await _safeInitAsync(() async {
      _filter4value =
          await secureStorage.getString('ff_filter4value') ?? _filter4value;
    });
    await _safeInitAsync(() async {
      _filter5value =
          await secureStorage.getString('ff_filter5value') ?? _filter5value;
    });
    await _safeInitAsync(() async {
      _machineDownATMFilter =
          await secureStorage.getString('ff_machineDownATMFilter') ??
              _machineDownATMFilter;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _userId = 'UID';
  String get userId => _userId;
  set userId(String _value) {
    _userId = _value;
    secureStorage.setString('ff_userId', _value);
  }

  void deleteUserId() {
    secureStorage.delete(key: 'ff_userId');
  }

  String _token = 'token';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    secureStorage.setString('ff_token', _value);
  }

  void deleteToken() {
    secureStorage.delete(key: 'ff_token');
  }

  String _noOfMachinesDown = '0';
  String get noOfMachinesDown => _noOfMachinesDown;
  set noOfMachinesDown(String _value) {
    _noOfMachinesDown = _value;
    secureStorage.setString('ff_noOfMachinesDown', _value);
  }

  void deleteNoOfMachinesDown() {
    secureStorage.delete(key: 'ff_noOfMachinesDown');
  }

  String _noOfMachineTransactionDip = '0';
  String get noOfMachineTransactionDip => _noOfMachineTransactionDip;
  set noOfMachineTransactionDip(String _value) {
    _noOfMachineTransactionDip = _value;
    secureStorage.setString('ff_noOfMachineTransactionDip', _value);
  }

  void deleteNoOfMachineTransactionDip() {
    secureStorage.delete(key: 'ff_noOfMachineTransactionDip');
  }

  String _totalMachinesManaged = '0';
  String get totalMachinesManaged => _totalMachinesManaged;
  set totalMachinesManaged(String _value) {
    _totalMachinesManaged = _value;
    secureStorage.setString('ff_totalMachinesManaged', _value);
  }

  void deleteTotalMachinesManaged() {
    secureStorage.delete(key: 'ff_totalMachinesManaged');
  }

  bool _visibilityState = false;
  bool get visibilityState => _visibilityState;
  set visibilityState(bool _value) {
    _visibilityState = _value;
    secureStorage.setBool('ff_visibilityState', _value);
  }

  void deleteVisibilityState() {
    secureStorage.delete(key: 'ff_visibilityState');
  }

  String _atmId = '';
  String get atmId => _atmId;
  set atmId(String _value) {
    _atmId = _value;
    secureStorage.setString('ff_atmId', _value);
  }

  void deleteAtmId() {
    secureStorage.delete(key: 'ff_atmId');
  }

  bool _atmInfoState = false;
  bool get atmInfoState => _atmInfoState;
  set atmInfoState(bool _value) {
    _atmInfoState = _value;
    secureStorage.setBool('ff_atmInfoState', _value);
  }

  void deleteAtmInfoState() {
    secureStorage.delete(key: 'ff_atmInfoState');
  }

  bool _awardState = false;
  bool get awardState => _awardState;
  set awardState(bool _value) {
    _awardState = _value;
    secureStorage.setBool('ff_awardState', _value);
  }

  void deleteAwardState() {
    secureStorage.delete(key: 'ff_awardState');
  }

  bool _targetIncState = false;
  bool get targetIncState => _targetIncState;
  set targetIncState(bool _value) {
    _targetIncState = _value;
    secureStorage.setBool('ff_targetIncState', _value);
  }

  void deleteTargetIncState() {
    secureStorage.delete(key: 'ff_targetIncState');
  }

  bool _filter1 = false;
  bool get filter1 => _filter1;
  set filter1(bool _value) {
    _filter1 = _value;
    secureStorage.setBool('ff_filter1', _value);
  }

  void deleteFilter1() {
    secureStorage.delete(key: 'ff_filter1');
  }

  bool _filter2 = false;
  bool get filter2 => _filter2;
  set filter2(bool _value) {
    _filter2 = _value;
    secureStorage.setBool('ff_filter2', _value);
  }

  void deleteFilter2() {
    secureStorage.delete(key: 'ff_filter2');
  }

  bool _filter3 = false;
  bool get filter3 => _filter3;
  set filter3(bool _value) {
    _filter3 = _value;
    secureStorage.setBool('ff_filter3', _value);
  }

  void deleteFilter3() {
    secureStorage.delete(key: 'ff_filter3');
  }

  bool _filter4 = false;
  bool get filter4 => _filter4;
  set filter4(bool _value) {
    _filter4 = _value;
    secureStorage.setBool('ff_filter4', _value);
  }

  void deleteFilter4() {
    secureStorage.delete(key: 'ff_filter4');
  }

  bool _filter5 = false;
  bool get filter5 => _filter5;
  set filter5(bool _value) {
    _filter5 = _value;
    secureStorage.setBool('ff_filter5', _value);
  }

  void deleteFilter5() {
    secureStorage.delete(key: 'ff_filter5');
  }

  String _filter1value = '';
  String get filter1value => _filter1value;
  set filter1value(String _value) {
    _filter1value = _value;
    secureStorage.setString('ff_filter1value', _value);
  }

  void deleteFilter1value() {
    secureStorage.delete(key: 'ff_filter1value');
  }

  String _filter2value = '';
  String get filter2value => _filter2value;
  set filter2value(String _value) {
    _filter2value = _value;
    secureStorage.setString('ff_filter2value', _value);
  }

  void deleteFilter2value() {
    secureStorage.delete(key: 'ff_filter2value');
  }

  String _filter3value = '';
  String get filter3value => _filter3value;
  set filter3value(String _value) {
    _filter3value = _value;
    secureStorage.setString('ff_filter3value', _value);
  }

  void deleteFilter3value() {
    secureStorage.delete(key: 'ff_filter3value');
  }

  String _filter4value = '';
  String get filter4value => _filter4value;
  set filter4value(String _value) {
    _filter4value = _value;
    secureStorage.setString('ff_filter4value', _value);
  }

  void deleteFilter4value() {
    secureStorage.delete(key: 'ff_filter4value');
  }

  String _filter5value = '';
  String get filter5value => _filter5value;
  set filter5value(String _value) {
    _filter5value = _value;
    secureStorage.setString('ff_filter5value', _value);
  }

  void deleteFilter5value() {
    secureStorage.delete(key: 'ff_filter5value');
  }

  String _machineDownATMFilter = '';
  String get machineDownATMFilter => _machineDownATMFilter;
  set machineDownATMFilter(String _value) {
    _machineDownATMFilter = _value;
    secureStorage.setString('ff_machineDownATMFilter', _value);
  }

  void deleteMachineDownATMFilter() {
    secureStorage.delete(key: 'ff_machineDownATMFilter');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
