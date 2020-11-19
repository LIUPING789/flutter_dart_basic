import 'package:flutter/material.dart';

class DataType extends StatefulWidget {
  @override
  _DataTypeState createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    _numTupe();
    _stringType();
    _boolType();
    _listType();
    _mapType();
    _tips();
    return Container(
      child: Text('常用数字类型，请查看控制台输出！'),
    );
  }

  ///数字类型
  void _numTupe() {
    print('----------numType---------');
    num num1 = 1.0; //是数据类型的父类
    num num2 = 1; //是数据类型的父类
    int int1 = 3; //只能是整数类型
    double d1 = 1.321; //双精度类型
    print('num:$num1  num:$num2 int:$int1 double:$d1');
    print(num1.abs()); //求绝对值
    print(num1.toInt()); //转成int
    print(num2.toDouble()); //转成double
  }

  ///字符串类型
  void _stringType() {
    print('----------stringType---------');
    String str1 = '字符串'; //字符串定义
    String str2 = "双引号"; //字符串定义
    String str3 = "str1:$str1 str2:$str2"; //字符串拼接
    String str4 = 'str1:' + str1 + ' str2:' + str2; //字符串拼接
    String str5 = '常用数字类型，请查看控制台输出';
    print('str3:$str3');
    print('str4:$str4');
    //字符串常用方法
    print(str5.substring(1, 5)); //字符串截取
    print(str5.indexOf("类型")); //获取字符串下标
    print(str5.length); //获取字符串长度
    print(str5.startsWith("常用数字类型", 4)); //获取字符串长度
    print(str5.replaceAll("请查看控制台输出", "1111111"));
    print(str5.split(","));
  }

  /// 布尔类型
  void _boolType() {
    print('----------boolType---------');
    bool success = true;
    bool fail = false;
    print(success);
    print(fail);
    print(success || fail);
    print(success & fail);
  }

  /// List 集合
  void _listType() {
    print('----------listType---------');
    //集合初始化方式
    List list = [1, 2, 3, '集合'];
    print(list);
    List<int> list2 = [];
    // list2 = list;// 错误语法
    print(list2);
    List list3 = [];
    list3.add("12312"); //通过add 添加元素
    print(list3);
    list3.addAll(list); //添加全部赋值
    print(list3);

    List list4 = List.generate(5, (index) => index * 2); //集合生成mothod
    print(list4);

    /// 集合遍历方式
    for (int i = 0; i < list.length; i++) {
      print(list[i]);
    }
    for (var k in list) {
      print(k);
    }
    list.forEach((element) {
      print(element);
    });
  }

  /// map 数据类型 ==>> map 是将key和value 相关的对象，key 和value 都可以是凭何对象，并且key是唯一的
  _mapType() {
    print('----------mapType---------');

    /// 初始化map 方式
    Map names = {'xiaoming': "小明", 'xiaohong': "小红", 'xiaohua': '小花'};
    print(names);
    Map ages = {};
    ages["xiaoming"] = 18;
    ages["xiaohong"] = 20;
    ages["xiaohua"] = 24;
    print(ages);

    /// map 遍历 方式
    names.forEach((key, value) {
      print('$key ,$value');
    });
    Map ages2 = ages.map((key, value) {
      return MapEntry(value, key);
    });
    print(ages2);
    for (var key in ages.keys) {
      print('$key  ${ages[key]}');
    }
  }

  ///科普小知识：dynamic、var、Object三者的区别
  ///dynamic：是所有Dart对象的基础类型， 在大多数情况下，通常不直接使用它，
  ///通过它定义的变量会关闭类型检查，这意味着 dynamic x = 'hal';x.foo();
  ///这段代码静态类型检查不会报错，但是运行时会crash，因为x并没有foo()方法，所以建议大家在编程时不要直接使用dynamic；
  ///var：是一个关键字，意思是“我不关心这里的类型是什么。”，系统会自动推断类型runtimeType；
  ///Object：是Dart对象的基类，当你定义：Object o=xxx；时这时候系统会认为o是个对象，你可以调用o的toString()和hashCode()方法
  ///因为Object提供了这些方法，但是如果你尝试调用o.foo()时，静态类型检查会进行报错；
  ///综上不难看出dynamic与Object的最大的区别是在静态类型检查上；
  _tips(){
    print('----------_tips---------');
    /// dynamic ---> 动态数据类型  //只有代码运行之后才知道什么数据类型
    dynamic x = 'hal';
    print(x.runtimeType);
    print(x);
    x = 123;
    print(x.runtimeType);
    print(x);

    /// var
    var a = 'hal';
    print(a.runtimeType);
    print(a);
    a = "123";
    print(a);

    /// Object
    Object o1= '111';
    print(o1.runtimeType);
    print(o1);
  }
}
