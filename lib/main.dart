import 'package:flutter/material.dart';
import 'pages/navbar.dart';
import 'pages/page1.dart';
import 'pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;
  final pages = [
    const Page1(),
    const Page2(),
  ];


  @override
  Widget build(BuildContext context) {
    double w,h;
    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;
    return  Scaffold(
      drawer: const Navbar(),
        appBar: AppBar(title:const Text('Navigation Practice'),centerTitle: true,),
        body:Center(child: pages[pageIndex]),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex==0?  const Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 40,
              ):
              const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 40,
              )
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex==1?  const Icon(
                Icons.work_rounded,
                color: Colors.white,
                size: 35,
              ):
              const Icon(
              Icons.work_outline_outlined,
              color: Colors.white,
              size: 35,
            )
            ),
          ],
        ),
      ),
    );
  }
}
