import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                        child: Icon(Icons.location_on_outlined,size: 30,)
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Charla, Ramanujapuram...",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                        Text("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  ",style: TextStyle(color: Colors.black),),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 11,),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search the items here',
                        fillColor: Colors.white54,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          borderSide: BorderSide(color: Colors.black26),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,color: Colors.black38
                        ),
                          color: Colors.white  ,
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Icon(Icons.menu,size: 15,),
                          SizedBox(width: 15,),
                          Text("Filters")
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,color: Colors.black38
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Rating: 4.0+")
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,color: Colors.black38
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Takeaway")
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,color: Colors.black38
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("FastDeliver")
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Image.asset("img/images.png",height: 280,),
                Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text("sorry, online ordering isn't available in bhadrachalam yet.we will be there soon - hang tight!",style: TextStyle(color: Colors.black38),)
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("zomato",style: TextStyle(color: Colors.black26,fontSize: 30,fontWeight: FontWeight.w900),),
                    Text("think food think zomato",style: TextStyle(color: Colors.black26,fontSize: 15,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic),)
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.shopping_bag_outlined),
                title: Text('Orders'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.location_history_outlined),
                title: Text('History'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.ondemand_video_sharp),
                title: Text('Videos'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.black12
            ),
          ],
          onTap: (index){
            setState((){
              _currentIndex = index;
            }
            );
          },
        ),
      ),
    );
  }
}
