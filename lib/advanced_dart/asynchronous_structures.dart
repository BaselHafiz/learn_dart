import 'dart:async';
/*

Asynchronous programming in Dart is characterized by the Future and Stream classes.

A Future represents a computation that doesn’t complete immediately.
Where a normal function returns the result, an asynchronous function returns a Future, which will eventually contain the result.

A stream is a sequence of asynchronous events. It is like an asynchronous Iterable -
where, instead of getting the next event when you ask for it, the stream tells you that there is an event when it is ready.

Streams provide an asynchronous sequence of data. Data sequences include user-generated events and data read from files.
You can process a stream using either await for or listen() from the Stream API.

*/

main() async {
  String output;
  /*
  Future<String> loadString1(String str) {
    return Future.delayed(Duration(seconds: 5)).then((any) {
      return 'String: $str';
    });
  }

  loadString1('Hello from Dart 1').then((s) => print(s));
  output = await loadString1('Hi from Dart');
  print(output);

  Future<String> loadString2(String str) async {
    await Future.delayed(Duration(seconds: 5));
    return 'String: $str';
  }

  loadString2('Hi from Dart').then((String str) => print(str));
  output = await loadString2('Hello from Dart 2');
  print(output);

  String loadString3(String str) {
    Future.delayed(Duration(seconds: 60));
    return 'String: $str';
  }

  output = await loadString3('Hello from Dart 3');
  print(output);
  */

  /*Stream<int> loadStream(int x) async* {
    for (var i = 0; i <= x; i++) {
      yield i;
    }
  }

  Stream<int> myStream1 = loadStream(10);

  await for (var s in myStream1) {
    print('$s');
  }*/

  Stream<int> myStream2 =
      Stream.periodic(Duration(seconds: 2), (int i) => i).take(5);

  /*myStream2.listen((int item) {
    print(item);
  });*/

  Future<int> sumStream(Stream<int> stream) async {
    var sum = 0;
    await for (var value in stream) {
      sum += value;
    }
    return sum;
  }

  var result = await sumStream(myStream2);
  print(result);
}

/*
import 'dart:async';
import 'dart:convert';
import 'dart:io';

main() async {
  File file = File('test.txt');
  IOSink sink = file.openWrite(mode: FileMode.append);

  sink.add(utf8.encode('Hi from Dart 1 ${DateTime.now().toString()} \n'));
  await Future.delayed(Duration(seconds: 3));

  sink.add(utf8.encode('Hi from Dart 2 ${DateTime.now().toString()} \n'));
  await Future.delayed(Duration(seconds: 3));

  sink.add(utf8.encode('Hi from Dart 3 ${DateTime.now().toString()} \n'));
  await Future.delayed(Duration(seconds: 3));

  await sink.flush();
  await sink.close();
}

 */

/*
import 'dart:async';

Stream<int> getMyStream1() {
  return Stream.periodic(Duration(seconds: 1), (int i) => i).take(4);
}

Stream<int> getMyStream2() async* {
  for (var i = 0; i < 4; ++i) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Future<int> getSummation(Stream<int> stream) async {
  int sum = 0;
  await for (var item in stream) {
    print(item);
    sum += item;
  }
  return sum;
}

main() async {
  /*await for (var item in getMyStream2()) {
    print(item);
  }
  print('DONE');*/

  var stream = () async* {
    for (var i = 0; i < 4; ++i) {
      await Future.delayed(Duration(seconds: 1));
      yield i + 10;
    }
  };

  await for (var item in stream()) {
    print(item);
  }

  /*getMyStream1().listen((int item) => print(item));
  print('DONE');*/

//  print('\nSummation: ${await getSummation(getMyStream2())}');
}

 */
