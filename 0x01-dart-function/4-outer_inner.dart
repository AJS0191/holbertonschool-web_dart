void outer(String name, String id){
  String agent = name.split(' ')[1][0] + '.' + name.split(' ')[0];
  String inner() {
    return('Hello Agent $agent your id is $id');
  }
  print(inner());
}
