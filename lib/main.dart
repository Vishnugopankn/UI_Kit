import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home:const Uikit()));

}
class Uikit extends StatefulWidget {
  const Uikit({Key? key}) : super(key: key);

  @override
  State<Uikit> createState() => _UikitState();
}

class _UikitState extends State<Uikit> {
  List c=[Colors.deepOrangeAccent,Colors.teal,Colors.blueAccent,Colors.green,Colors.purple];
  List title=["File Manager","Exercise Tips","Food Recipe","Gym","E-Wallet"];
  List icon=[Icons.file_copy,Icons.engineering,Icons.food_bank,Icons.sports_gymnastics,Icons.wallet];
  List title2=["Theme 1 screens","Theme 2 screens","Theme 3 screens","Theme 4 screens","Theme 5 screens"];
  List c1=[Colors.deepOrangeAccent,Colors.teal,Colors.blueAccent,Colors.green,Colors.purple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("All In One UI Kit"),
            Icon(Icons.toggle_on,size: 40,)
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GridView.count(
                childAspectRatio: 6/4.5,
                shrinkWrap: true,
                  crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone_android,size: 50,),
                      Text("Mobile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.widgets,size: 50,),
                      Text("Full Apps",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.integration_instructions_rounded,size: 50,),
                      Text("Integration",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dashboard,size: 50,),
                      Text("Dashboard",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                ),
              ],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(alignment: Alignment.centerLeft,
                    child: Text("Themes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: c.length,
                  itemBuilder:(BuildContext context, int i){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,width: 100,
                            decoration: BoxDecoration(
                              color:c[i],
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                  offset: Offset(0, 2)
                                )
                              ]
                            ),
                            child: Icon(icon[i],size: 33,),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    // color: Colors.white54,
                                        blurRadius: 6,
                                    spreadRadius: 0.0,
                                     offset: Offset(0, 3.0),
                                  ),
                                ]
                              ),
                              child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${title[i]}",style: TextStyle(fontSize: 20,
                                          fontWeight: FontWeight.bold),),
                                      Text("${title2[i]}",style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                  FloatingActionButton(onPressed: (){},backgroundColor:c1[i],
                                  child: Icon(Icons.arrow_forward_rounded),),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
              })
            ],
          ),
        ),
      ),

    );
  }
}

