part of '../navigation_screen.dart';
class NavProvider with ChangeNotifier{
  int? _index = 0;
  int? get index => _index;
  getIndex(int idx){
    _index = idx;
    notifyListeners();
  }
}