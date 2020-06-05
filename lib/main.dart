import 'package:flutter/material.dart';
import 'package:userinterface/Animation/MyFadeAnimation.dart';
void main() => runApp(MaterialApp(
  home: MyHomePage(),
));


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey[350],
      body: SingleChildScrollView(
      //  padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/a.jpg'),
                fit: BoxFit.cover,
              )
              ),
              child: Container(
                decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors:[
                  Colors.lightBlue.withOpacity(.5),
                  Colors.black12.withOpacity(.1),
                ])
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('What would you like to Find',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),),
                    SizedBox(height: 50,),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                     //
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.red,),
                          border: InputBorder.none,
                          hintText: 'Search for cities...',
                          hintStyle: TextStyle(color: Colors.cyan[500],fontStyle: FontStyle.italic,fontSize: 25)
                        ),
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),

            ),

            Container(padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Best Destination',style: TextStyle(color: Colors.cyan[500],fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                     makeItem(image: 'assets/a.jpg',title: 'Goku'),
                      makeItem(image: 'assets/a.jpg',title: 'Goku'),
                      makeItem(image: 'assets/a.jpg',title: 'Goku'),
                      makeItem(image: 'assets/a.jpg',title: 'Goku'),
                      makeItem(image: 'assets/a.jpg',title: 'Goku'),
                      makeItem(image: 'assets/a.jpg',title: 'Goku'),


                    ],
                  ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height:50,

                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5/1,
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.withOpacity(.2),
                    ),
                            child: Icon(Icons.hotel, color: Colors.blue,),
                          ),
                        ),

                        AspectRatio(
                          aspectRatio: 1.5/1,

                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.withOpacity(.2),
                            ),
                            child: Icon(Icons.flight, color: Colors.red,),
                          ),
                        ),

                        AspectRatio(
                          aspectRatio: 1.5/1,

                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.withOpacity(.2),
                            ),
                            child: Icon(Icons.event, color: Colors.green,),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Best Hotels',style: TextStyle(color: Colors.cyan[500],fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/a.jpg',title: 'Goku'),
                        makeItem(image: 'assets/a.jpg',title: 'Goku'),
                        makeItem(image: 'assets/a.jpg',title: 'Goku'),
                        makeItem(image: 'assets/a.jpg',title: 'Goku'),
                        makeItem(image: 'assets/a.jpg',title: 'Goku'),
                        makeItem(image: 'assets/a.jpg',title: 'Goku'),


                      ],
                    ),
                  ),



                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget makeItem({image, title})
  {
    return AspectRatio(
aspectRatio: 1/1,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors:[
                  Colors.black12.withOpacity(.5),
                  Colors.black12.withOpacity(.1),
                ]),
          image: DecorationImage(
            image: AssetImage(image),
                fit: BoxFit.cover
          )
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(title,style:TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }

}