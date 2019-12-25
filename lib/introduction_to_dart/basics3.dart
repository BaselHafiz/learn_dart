void main() {
  /*String str = "@gmail.com";
  List<String> users = ["Basel", "Ahmed", "Lam", "Mona", "Boda"];
  for (var i = 0; i < users.length; i++) {
    if (users[i].length <= 3) continue; // break;
    users[i] = users[i].toUpperCase();
    users[i] = users[i] + str;
    print(users[i]);
  }*/

  /* var i = 100;
  do {
    print("Hi");
    i += 2;
  } while (i <= 10);*/

  myOuterLoop:
  for (int i = 1; i <= 3; i++) {
    myInnerLoop:
    for (int j = 1; j <= 3; j++) {
      print('$i $j');
      if (i == 2 && j == 2) break myOuterLoop;  // continue myInnerLoop;
    }
  }
}
