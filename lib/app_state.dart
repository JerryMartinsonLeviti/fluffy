import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _CurrentUserID = prefs.getInt('ff_CurrentUserID') ?? _CurrentUserID;
    });
    _safeInit(() {
      _PKVendors = prefs.getInt('ff_PKVendors') ?? _PKVendors;
    });
    _safeInit(() {
      _PKPlanner = prefs.getInt('ff_PKPlanner') ?? _PKPlanner;
    });
    _safeInit(() {
      _PKLiaison = prefs.getInt('ff_PKLiaison') ?? _PKLiaison;
    });
    _safeInit(() {
      _DevAccessCode = prefs.getString('ff_DevAccessCode') ?? _DevAccessCode;
    });
    _safeInit(() {
      _DevModeEnabled = prefs.getBool('ff_DevModeEnabled') ?? _DevModeEnabled;
    });
    _safeInit(() {
      _VendorFaqs = prefs
              .getStringList('ff_VendorFaqs')
              ?.map((x) {
                try {
                  return SiteFaqsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _VendorFaqs;
    });
    _safeInit(() {
      _SilverSpikeLocations = prefs
              .getStringList('ff_SilverSpikeLocations')
              ?.map((x) {
                try {
                  return RegionTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _SilverSpikeLocations;
    });
    _safeInit(() {
      _PKActiveEvent = prefs.getInt('ff_PKActiveEvent') ?? _PKActiveEvent;
    });
    _safeInit(() {
      _ChoosableTimes = prefs
              .getStringList('ff_ChoosableTimes')
              ?.map((x) => DateTime.fromMillisecondsSinceEpoch(int.parse(x)))
              .toList() ??
          _ChoosableTimes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _CurrentUserID = 0;
  int get CurrentUserID => _CurrentUserID;
  set CurrentUserID(int value) {
    _CurrentUserID = value;
    prefs.setInt('ff_CurrentUserID', value);
  }

  int _PKVendors = 1;
  int get PKVendors => _PKVendors;
  set PKVendors(int value) {
    _PKVendors = value;
    prefs.setInt('ff_PKVendors', value);
  }

  int _PKPlanner = 1;
  int get PKPlanner => _PKPlanner;
  set PKPlanner(int value) {
    _PKPlanner = value;
    prefs.setInt('ff_PKPlanner', value);
  }

  int _PKLiaison = 1;
  int get PKLiaison => _PKLiaison;
  set PKLiaison(int value) {
    _PKLiaison = value;
    prefs.setInt('ff_PKLiaison', value);
  }

  String _DevAccessCode = '3030';
  String get DevAccessCode => _DevAccessCode;
  set DevAccessCode(String value) {
    _DevAccessCode = value;
    prefs.setString('ff_DevAccessCode', value);
  }

  bool _DevModeEnabled = false;
  bool get DevModeEnabled => _DevModeEnabled;
  set DevModeEnabled(bool value) {
    _DevModeEnabled = value;
    prefs.setBool('ff_DevModeEnabled', value);
  }

  List<SiteFaqsStruct> _VendorFaqs = [
    SiteFaqsStruct.fromSerializableMap(jsonDecode(
        '{\"Question\":\"Hello World\",\"Answer\":\"Hello World\",\"displayOnFrontPage\":\"false\"}')),
    SiteFaqsStruct.fromSerializableMap(jsonDecode(
        '{\"Question\":\"Hello World\",\"Answer\":\"Hello World\",\"displayOnFrontPage\":\"false\"}'))
  ];
  List<SiteFaqsStruct> get VendorFaqs => _VendorFaqs;
  set VendorFaqs(List<SiteFaqsStruct> value) {
    _VendorFaqs = value;
    prefs.setStringList(
        'ff_VendorFaqs', value.map((x) => x.serialize()).toList());
  }

  void addToVendorFaqs(SiteFaqsStruct value) {
    _VendorFaqs.add(value);
    prefs.setStringList(
        'ff_VendorFaqs', _VendorFaqs.map((x) => x.serialize()).toList());
  }

  void removeFromVendorFaqs(SiteFaqsStruct value) {
    _VendorFaqs.remove(value);
    prefs.setStringList(
        'ff_VendorFaqs', _VendorFaqs.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromVendorFaqs(int index) {
    _VendorFaqs.removeAt(index);
    prefs.setStringList(
        'ff_VendorFaqs', _VendorFaqs.map((x) => x.serialize()).toList());
  }

  void updateVendorFaqsAtIndex(
    int index,
    SiteFaqsStruct Function(SiteFaqsStruct) updateFn,
  ) {
    _VendorFaqs[index] = updateFn(_VendorFaqs[index]);
    prefs.setStringList(
        'ff_VendorFaqs', _VendorFaqs.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInVendorFaqs(int index, SiteFaqsStruct value) {
    _VendorFaqs.insert(index, value);
    prefs.setStringList(
        'ff_VendorFaqs', _VendorFaqs.map((x) => x.serialize()).toList());
  }

  List<RegionTypeStruct> _SilverSpikeLocations = [
    RegionTypeStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"region_name\":\"Bay Area\",\"region_image\":\"https://picsum.photos/seed/898/600\"}')),
    RegionTypeStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"region_name\":\"New York\",\"region_image\":\"https://picsum.photos/seed/98/600\"}')),
    RegionTypeStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"region_name\":\"Los Angeles\",\"region_image\":\"https://picsum.photos/seed/645/600\"}')),
    RegionTypeStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"region_name\":\"Las Vegas\",\"region_image\":\"https://picsum.photos/seed/164/600\"}'))
  ];
  List<RegionTypeStruct> get SilverSpikeLocations => _SilverSpikeLocations;
  set SilverSpikeLocations(List<RegionTypeStruct> value) {
    _SilverSpikeLocations = value;
    prefs.setStringList(
        'ff_SilverSpikeLocations', value.map((x) => x.serialize()).toList());
  }

  void addToSilverSpikeLocations(RegionTypeStruct value) {
    _SilverSpikeLocations.add(value);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  void removeFromSilverSpikeLocations(RegionTypeStruct value) {
    _SilverSpikeLocations.remove(value);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSilverSpikeLocations(int index) {
    _SilverSpikeLocations.removeAt(index);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  void updateSilverSpikeLocationsAtIndex(
    int index,
    RegionTypeStruct Function(RegionTypeStruct) updateFn,
  ) {
    _SilverSpikeLocations[index] = updateFn(_SilverSpikeLocations[index]);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSilverSpikeLocations(
      int index, RegionTypeStruct value) {
    _SilverSpikeLocations.insert(index, value);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  int _PKActiveEvent = 0;
  int get PKActiveEvent => _PKActiveEvent;
  set PKActiveEvent(int value) {
    _PKActiveEvent = value;
    prefs.setInt('ff_PKActiveEvent', value);
  }

  List<DateTime> _ChoosableTimes = [];
  List<DateTime> get ChoosableTimes => _ChoosableTimes;
  set ChoosableTimes(List<DateTime> value) {
    _ChoosableTimes = value;
    prefs.setStringList('ff_ChoosableTimes',
        value.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void addToChoosableTimes(DateTime value) {
    _ChoosableTimes.add(value);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void removeFromChoosableTimes(DateTime value) {
    _ChoosableTimes.remove(value);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void removeAtIndexFromChoosableTimes(int index) {
    _ChoosableTimes.removeAt(index);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void updateChoosableTimesAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    _ChoosableTimes[index] = updateFn(_ChoosableTimes[index]);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void insertAtIndexInChoosableTimes(int index, DateTime value) {
    _ChoosableTimes.insert(index, value);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }
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
