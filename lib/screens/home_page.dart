import 'package:flutter/material.dart';
import 'package:curd/screens/screen.dart';
import 'package:curd/screens/inseart.dart';
import 'package:curd/screens/update.dart';
import 'package:curd/screens/delete.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid"),),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25.0,
              mainAxisSpacing: 25.0,
            ),
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>inseartdata()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home, size: 50,color: Colors.white,),
                    Text("inseartdata",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],
                ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>upadtedata()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search ,size: 50,color: Colors.white,),
                      Text("upadtedata",style: TextStyle(color: Colors.white,fontSize: 30),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>deletedata()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings, size: 50,color: Colors.white,),
                      Text("deletedata",style: TextStyle(color: Colors.white,fontSize: 30),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListScreen()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.book, size: 50,color: Colors.white,),
                      Text("Fetch",style: TextStyle(color: Colors.white,fontSize: 30),)
                    ],
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
