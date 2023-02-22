part of '../rx_notifier.dart';

class RxList<T> extends ChangeNotifier with ListMixin<T> {
  late final List<T> _list;
  RxList([List<T>? list]) {
    if (list != null) {
      _list = list;
    } else {
      _list = [];
    }
  }

  @override
  int get length {
    _rxMainContext.reportRead(this);
    return _list.length;
  }

  @override
  T get first {
    _rxMainContext.reportRead(this);
    return _list.first;
  }

  @override
  T get last {
    _rxMainContext.reportRead(this);
    return _list.last;
  }

  @override
  Iterable<T> get reversed {
    _rxMainContext.reportRead(this);
    return _list.reversed;
  }

  @override
  bool get isEmpty {
    _rxMainContext.reportRead(this);
    return _list.isEmpty;
  }

  @override
  bool get isNotEmpty {
    _rxMainContext.reportRead(this);
    return _list.isNotEmpty;
  }

  @override
  Iterator<T> get iterator {
    _rxMainContext.reportRead(this);
    return _list.iterator;
  }

  @override
  T get single {
    _rxMainContext.reportRead(this);
    return _list.single;
  }

  @override
  Iterable<T> getRange(int start, int end) {
    _rxMainContext.reportRead(this);
    return _list.getRange(start, end);
  }

  @override
  void replaceRange(int start, int end, Iterable<T> replacement) {
    _list.replaceRange(start, end, replacement);
    notifyListeners();
  }

  @override
  void setRange(int start, int end, Iterable<T> iterable, [int skipCount = 0]) {
    _list.setRange(start, end, iterable, skipCount);
    notifyListeners();
  }

  @override
  void fillRange(int start, int end, [T? fillValue]) {
    _list.fillRange(start, end, fillValue);
    notifyListeners();
  }

  @override
  void add(T item) {
    _list.add(item);
    notifyListeners();
  }

  @override
  void addAll(Iterable<T> list) {
    _list.addAll(list);
    notifyListeners();
  }

  @override
  bool remove(covariant T value) {
    final removed = _list.remove(value);
    if (removed) {
      notifyListeners();
    }
    return removed;
  }

  @override
  T removeAt(int index) {
    final removed = _list.removeAt(index);
    notifyListeners();
    return removed;
  }

  @override
  T removeLast() {
    final removed = _list.removeLast();
    notifyListeners();
    return removed;
  }

  @override
  void removeRange(int start, int end) {
    _list.removeRange(start, end);
    notifyListeners();
  }

  @override
  void removeWhere(bool Function(T) test) {
    _list.removeWhere(test);
    notifyListeners();
  }

  @override
  void insert(int index, T element) {
    _list.insert(index, element);
    notifyListeners();
  }

  @override
  void insertAll(int index, Iterable<T> iterable) {
    _list.insertAll(index, iterable);
    notifyListeners();
  }

  @override
  void setAll(int index, Iterable<T> iterable) {
    _list.setAll(index, iterable);
    notifyListeners();
  }

  @override
  void shuffle([Random? random]) {
    _list.shuffle(random);
    notifyListeners();
  }

  @override
  void sort([int Function(T, T)? compare]) {
    _list.sort(compare);
    notifyListeners();
  }

  @override
  List<T> sublist(int start, [int? end]) {
    _rxMainContext.reportRead(this);
    return _list.sublist(start, end);
  }

  @override
  T singleWhere(bool Function(T) test, {T Function()? orElse}) {
    _rxMainContext.reportRead(this);
    return _list.singleWhere(test, orElse: orElse);
  }

  @override
  Iterable<T> skip(int count) {
    _rxMainContext.reportRead(this);
    return _list.skip(count);
  }

  @override
  Iterable<T> skipWhile(bool Function(T) test) {
    _rxMainContext.reportRead(this);
    return _list.skipWhile(test);
  }

  @override
  void forEach(void Function(T) f) {
    _rxMainContext.reportRead(this);
    _list.forEach(f);
  }

  @override
  void clear() {
    _list.clear();
    notifyListeners();
  }

  static RxList<T> of<T>(List<T> list) => RxList<T>(list);

  @override
  List<T> operator +(List<T> other) {
    final newList = _list + other;
    _rxMainContext.reportRead(this);
    return newList;
  }

  @override
  T operator [](int index) {
    _rxMainContext.reportRead(this);
    return _list[index];
  }

  @override
  void operator []=(int index, T value) {
    _list[index] = value;
    notifyListeners();
  }

  @override
  set length(int value) {
    _list.length = value;
    notifyListeners();
  }
}
