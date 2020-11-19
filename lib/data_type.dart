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
    return Container(
      child: Text('常用数字类型，请查看控制台输出！'),
    );
  }

  ///数字类型
  void _numTupe() {
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
    String str1 = '字符串'; //字符串定义
    String str2 = "双引号"; //字符串定义
    String str3 = "str1:$str1 str2:$str2"; //字符串拼接
    String str4 = 'str1:' + str1 + ' str2:' + str2; //字符串拼接
    String str5 ='常用数字类型，请查看控制台输出';
    print('str3:$str3');
    print('str4:$str4');
    //字符串常用方法
    print(str5.substring(1,5));//字符串截取
    print(str5.indexOf("类型"));//获取字符串下标
    print(str5.length);//获取字符串长度
    print(str5.startsWith("常用数字类型",4));//获取字符串长度
    print(str5.replaceAll("请查看控制台输出", "1111111"));
    print(str5.split(","));
  }
}
