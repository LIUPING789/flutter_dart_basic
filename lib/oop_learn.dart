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

  /// getter 方法
  String get school => _school;

  /// setter 方法
  set school(String value) {
    this._school = value;
  }

  static doPrint() {
    return "------doPrint-----";
  }

  ///命名构造方法【类名+.方法名】
  ///使用命名构造方法为类实现多个构造方法
  Student.cover(Student student) : super(student.name, student.age) {
    print('命名构造方法');
  }

  @override
  String toString() {
    return 'Student{_school: $_school, city: $city, cuntry: $cuntry, name: $name}';
  } //命名构造方法： factory [类名+.+方法名]

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

/// 继承抽象类，必须实现抽象方法，否则自己用 abstract 标记
class StudyFlutter extends Study{
  @override
  void study() {
    print('Leraning Flutter.');
  }
}


/// 抽象类，用 abstract 标识，不能被实例化，可以有自己的方法
abstract class Study {
  void study();
}

///为类添加特征：mixins
///mixins 是在多个类层次结构中重用代码的一种方式
///要使用 mixins ，在 with 关键字后面跟一个或多个 mixin 的名字(用逗号分开)，并且with要用在extends关键字之后
///mixins的特征：实现 mixin ，就创建一个继承 Object 类的子类(不能继承其他类)，不声明任何构造方法，不调用 super
///猜猜上面的类中哪个是mixin？
class Test extends Person with Study{
  Test(String name, int age) : super(name, age);

  @override
  void study() {

  }
}


