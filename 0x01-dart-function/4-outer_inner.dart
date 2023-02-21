void outer(String name, String id){
  String agent = name.split(' ')[1][1] + '.' + name.split(' ')[0];
  String inner() {
    return('Hello Agent $agent your id is $id\n');
  }
  print(inner());
}
