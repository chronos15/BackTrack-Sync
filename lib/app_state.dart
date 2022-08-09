import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _favoritos = prefs.getStringList('ff_favoritos')?.map((x) {
          try {
            return jsonDecode(x);
          } catch (e) {
            print("Can't decode persisted json. Error: $e.");
            return {};
          }
        })?.toList() ??
        _favoritos;
  }

  SharedPreferences prefs;

  String acessToken = '';

  dynamic accessTokenJs;

  List<dynamic> _favoritos = [];
  List<dynamic> get favoritos => _favoritos;
  set favoritos(List<dynamic> _value) {
    _favoritos = _value;
    prefs.setStringList(
        'ff_favoritos', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToFavoritos(dynamic _value) {
    _favoritos.add(_value);
    prefs.setStringList(
        'ff_favoritos', _favoritos.map((x) => jsonEncode(x)).toList());
  }

  void removeFromFavoritos(dynamic _value) {
    _favoritos.remove(_value);
    prefs.setStringList(
        'ff_favoritos', _favoritos.map((x) => jsonEncode(x)).toList());
  }

  int pages = 0;

  String routeDistance = '';

  String routeDuration = '';

  int pagesCliente = 0;

  LatLng latlong;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
