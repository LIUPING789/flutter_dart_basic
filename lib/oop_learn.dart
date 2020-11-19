class Student extends Person {
  //定义类的变量    - 是私用变量 等同于 Java private
  String _school;
  String city;
  String cuntry;
  String name;

  /// 构造方法
  /// 通过this._school初始化自有参数
  ///name,age给父类初始化
  /// cuntry 自己初始化
  Student(this._school, String name, int age,
      {this.city, this.cuntry = 'China'})
      : name = '$cuntry.$city',
        super(name, age);

  ///命名构造方法【类名+.方法名】
  ///使用命名构造方法为类实现多个构造方法
  Student.cover(Student student) : super(student.name, student.age) {
    print('命名构造方法');
  }

  //命名构造方法： factory [类名+.+方法名]
  factory Student.stu(Student stu) {
    return Student(stu._school, stu.name, stu.age);
  }
}

///工厂构造方法demo
class Logger {
  static Logger _cache;

  //工厂构造方法
  //不仅仅是一个构造方法，更是一种设计模式
  //有时候为了返回一个之前已经创建的缓存对象，原始的构造方法已经不能满足
  //那么可以使用工厂模式来定义构造方洗
  factory Logger() {
    if (_cache == null) {
      _cache = Logger._internal();
    }
    return _cache;
  }

  Logger._internal();

  void log(String msg) {
    print(msg);
  }
}

/// 定义一个Dart类，所有类都继承自Object
class Person {
  String name;
  int age;

  ///标准构造方法
  Person(this.name, this.age);

  //重写父类方法
  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}
