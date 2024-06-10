import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/supabase/supabase.dart';
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
    _safeInit(() {
      _PKOrganization = prefs.getInt('ff_PKOrganization') ?? _PKOrganization;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _CurrentUserID = 0;
  int get CurrentUserID => _CurrentUserID;
  set CurrentUserID(int _value) {
    _CurrentUserID = _value;
    prefs.setInt('ff_CurrentUserID', _value);
  }

  int _PKVendors = 1;
  int get PKVendors => _PKVendors;
  set PKVendors(int _value) {
    _PKVendors = _value;
    prefs.setInt('ff_PKVendors', _value);
  }

  int _PKPlanner = 1;
  int get PKPlanner => _PKPlanner;
  set PKPlanner(int _value) {
    _PKPlanner = _value;
    prefs.setInt('ff_PKPlanner', _value);
  }

  int _PKLiaison = 1;
  int get PKLiaison => _PKLiaison;
  set PKLiaison(int _value) {
    _PKLiaison = _value;
    prefs.setInt('ff_PKLiaison', _value);
  }

  String _DevAccessCode = '3030';
  String get DevAccessCode => _DevAccessCode;
  set DevAccessCode(String _value) {
    _DevAccessCode = _value;
    prefs.setString('ff_DevAccessCode', _value);
  }

  bool _DevModeEnabled = false;
  bool get DevModeEnabled => _DevModeEnabled;
  set DevModeEnabled(bool _value) {
    _DevModeEnabled = _value;
    prefs.setBool('ff_DevModeEnabled', _value);
  }

  List<SiteFaqsStruct> _VendorFaqs = [
    SiteFaqsStruct.fromSerializableMap(jsonDecode(
        '{\"Question\":\"Hello World\",\"Answer\":\"Hello World\",\"displayOnFrontPage\":\"false\"}')),
    SiteFaqsStruct.fromSerializableMap(jsonDecode(
        '{\"Question\":\"Hello World\",\"Answer\":\"Hello World\",\"displayOnFrontPage\":\"false\"}'))
  ];
  List<SiteFaqsStruct> get VendorFaqs => _VendorFaqs;
  set VendorFaqs(List<SiteFaqsStruct> _value) {
    _VendorFaqs = _value;
    prefs.setStringList(
        'ff_VendorFaqs', _value.map((x) => x.serialize()).toList());
  }

  void addToVendorFaqs(SiteFaqsStruct _value) {
    _VendorFaqs.add(_value);
    prefs.setStringList(
        'ff_VendorFaqs', _VendorFaqs.map((x) => x.serialize()).toList());
  }

  void removeFromVendorFaqs(SiteFaqsStruct _value) {
    _VendorFaqs.remove(_value);
    prefs.setStringList(
        'ff_VendorFaqs', _VendorFaqs.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromVendorFaqs(int _index) {
    _VendorFaqs.removeAt(_index);
    prefs.setStringList(
        'ff_VendorFaqs', _VendorFaqs.map((x) => x.serialize()).toList());
  }

  void updateVendorFaqsAtIndex(
    int _index,
    SiteFaqsStruct Function(SiteFaqsStruct) updateFn,
  ) {
    _VendorFaqs[_index] = updateFn(_VendorFaqs[_index]);
    prefs.setStringList(
        'ff_VendorFaqs', _VendorFaqs.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInVendorFaqs(int _index, SiteFaqsStruct _value) {
    _VendorFaqs.insert(_index, _value);
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
  set SilverSpikeLocations(List<RegionTypeStruct> _value) {
    _SilverSpikeLocations = _value;
    prefs.setStringList(
        'ff_SilverSpikeLocations', _value.map((x) => x.serialize()).toList());
  }

  void addToSilverSpikeLocations(RegionTypeStruct _value) {
    _SilverSpikeLocations.add(_value);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  void removeFromSilverSpikeLocations(RegionTypeStruct _value) {
    _SilverSpikeLocations.remove(_value);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSilverSpikeLocations(int _index) {
    _SilverSpikeLocations.removeAt(_index);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  void updateSilverSpikeLocationsAtIndex(
    int _index,
    RegionTypeStruct Function(RegionTypeStruct) updateFn,
  ) {
    _SilverSpikeLocations[_index] = updateFn(_SilverSpikeLocations[_index]);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSilverSpikeLocations(
      int _index, RegionTypeStruct _value) {
    _SilverSpikeLocations.insert(_index, _value);
    prefs.setStringList('ff_SilverSpikeLocations',
        _SilverSpikeLocations.map((x) => x.serialize()).toList());
  }

  int _PKActiveEvent = 0;
  int get PKActiveEvent => _PKActiveEvent;
  set PKActiveEvent(int _value) {
    _PKActiveEvent = _value;
    prefs.setInt('ff_PKActiveEvent', _value);
  }

  List<DateTime> _ChoosableTimes = [];
  List<DateTime> get ChoosableTimes => _ChoosableTimes;
  set ChoosableTimes(List<DateTime> _value) {
    _ChoosableTimes = _value;
    prefs.setStringList('ff_ChoosableTimes',
        _value.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void addToChoosableTimes(DateTime _value) {
    _ChoosableTimes.add(_value);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void removeFromChoosableTimes(DateTime _value) {
    _ChoosableTimes.remove(_value);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void removeAtIndexFromChoosableTimes(int _index) {
    _ChoosableTimes.removeAt(_index);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void updateChoosableTimesAtIndex(
    int _index,
    DateTime Function(DateTime) updateFn,
  ) {
    _ChoosableTimes[_index] = updateFn(_ChoosableTimes[_index]);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  void insertAtIndexInChoosableTimes(int _index, DateTime _value) {
    _ChoosableTimes.insert(_index, _value);
    prefs.setStringList(
        'ff_ChoosableTimes',
        _ChoosableTimes.map((x) => x.millisecondsSinceEpoch.toString())
            .toList());
  }

  int _PKOrganization = 1;
  int get PKOrganization => _PKOrganization;
  set PKOrganization(int _value) {
    _PKOrganization = _value;
    prefs.setInt('ff_PKOrganization', _value);
  }

  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? _value) {
    _startDate = _value;
  }

  bool _rangePickerUpdated = false;
  bool get rangePickerUpdated => _rangePickerUpdated;
  set rangePickerUpdated(bool _value) {
    _rangePickerUpdated = _value;
  }

  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? _value) {
    _endDate = _value;
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
