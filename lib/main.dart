import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'model/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
    //   ChangeNotifierProvider<MyData>(
    //   create: (BuildContext context) => MyData(),
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     ),
    //     home: Scaffold(
    //       body: Level1(),
    //       appBar: AppBar(
    //         title: MyText(),
    //         backgroundColor: Colors.lightBlueAccent,
    //       ),
    //     ),
    //     // TasksScreen(),
    //   ),
    // );
    ChangeNotifierProvider<TaskData>(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: TasksScreen(),
      ),
    );
  }
}



//
// class MyText extends StatelessWidget {
//   const MyText({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text(Provider.of<MyData>(context,listen: false).data));
//   }
// }
//
// class Level1 extends StatelessWidget {
//   const Level1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Level2();
//   }
// }
//
// class Level2 extends StatelessWidget {
//   const Level2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       MyTextField(),
//       SizedBox(height: 10,),
//       Level3()
//     ]
//     );
//   }
// }
//
// class Level3 extends StatelessWidget {
//   const Level3({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       Provider.of<MyData>(context).data,
//       style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
//     );
//   }
// }
//
// class MyTextField extends StatelessWidget {
//   const MyTextField({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       textAlign: TextAlign.center,
//       onChanged: (value) {
//       Provider.of<MyData>(context,listen: false).changeData(value);
//     },);
//   }
// }
//
// class MyData extends ChangeNotifier {
//
//   String data = "Top Secret Data";
//
//   void changeData (newValue) {
//     data = newValue;
//     notifyListeners();
//   }
//
// }
