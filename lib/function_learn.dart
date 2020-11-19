class TestFunction {
  FunctionLearn function = FunctionLearn();

  void start() {
    print(function.sum(1, 2));
    function._learn();
    function.anonymousFunction();
  }
}

class FunctionLearn {
  /// 方法的构成
  /// 返回值类型 +方法名+参数
  /// 其中：返回类型可缺省，也可为void 或者具体的类型
  /// 方法名：匿名方法不需要方法名
  /// 参数：参数类型和参数名，参数类型可缺省

  int sum(int val1, int val2) {
    return val1 + val2;
  }

  /// 私有方法：
  /// 通过_开头命名的方法
  /// 作用域是当前文件
  _learn() {
    print("私有方法");
  }

  /// 匿名方法
  anonymousFunction() {
    List list = ['私有方法','匿名方法'];
    list.forEach((element) {
      print(element);
    });
  }
}
