import 'package:flutter_dart/oop_learn.dart';

class TestGeneric {
  void start() {
    Cache<String> cache1 = Cache();
    cache1.setItem('cache1', 'cache1');
    String item1 = cache1.getItem('cache1');
    print(item1);

    Cache<String> cache2 = Cache();
    cache2.setItem('cache1', "1008");
    String item2 = cache1.getItem('cache1');
    print(item2);

    Member<Student> member = Member(Student("", "", 19));
    member.fixedName();
  }
}

///泛型：
///通俗理解：泛型主要是解决类、接口、方法的复用性、以及对不特定数据类型的支持

///泛型类
///作用:提高代码的复用度
class Cache<T> {
  static final Map<String, Object> _cached = Map();

  void setItem(String key, T value) {
    _cached[key] = value;
  }

  getItem(String key) {
    return _cached[key];
  }
}


///有时候你在实现类似通过用接的泛型中，期望的类型是某些特定的类型，这时可以使用类型约束

class Member<T extends Person> {
  T _person;

  Member(this._person);

  String fixedName() {
    return 'fixed ${_person.name}';
  }
}
