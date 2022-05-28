import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

    void main() {
      runApp(MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomeRoute(),
          '/second': (context) => SecondRoute(),
          '/third': (context) => ThirdRoute(),
          '/fourth': (context) => FourthRoute(),
          '/fifth': (context) => FifthRoute(),
          '/sixth': (context) => MainPage(),


        },
      ));
    }
class MainPage extends StatefulWidget{
      SixthPage createState()=>SixthPage();

}
    //LOGIN PAGE
      class HomeRoute extends StatelessWidget {
      final _textController1 = TextEditingController();
      final _textController2 = TextEditingController();

      var userDetails = '';

      @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(centerTitle: true,
              title:const Text('WELCOME, PLEASE LOGIN'),
                  backgroundColor: Colors.green),
            body: Center(
                  child:
                Column(
                  children: <Widget>[
                    const Image(image: AssetImage("picture1.png")),
                    TextField(
                      controller: _textController1,
                      decoration: const InputDecoration(
                        hintText: 'USERNAME',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: _textController2,
                      decoration: const InputDecoration(
                        hintText: 'PASSWORD',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 35,
                            width: 90,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: const BorderSide(width:3, color:Colors.white),),
                        child:const Text('LOGIN'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/fourth');
                        },
                      )
                          )]
                       ),


                    Row(mainAxisAlignment: MainAxisAlignment.center, children:[
                      SizedBox(
                          height: 35, width: 90,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(width:3, color:Colors.white),),
                            child:const Text('SIGN UP'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/second');
                  },
              ),),
            ]),


               ],
              ))
           );
        }}



      //SIGN UP
      class SecondRoute extends StatelessWidget {
      final _textController3 = TextEditingController();
      final _textController4 = TextEditingController();
      final _textController5 = TextEditingController();

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(centerTitle: true,
              title:const Text(
                  "SIGN UP",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              backgroundColor: Colors.green,),

            body: Center(child:(
                Column(children: [
                  const Image(image: AssetImage("picture1.png")),
                  TextField(
                    controller: _textController3,
                    decoration: const InputDecoration(
                      hintText: 'Please enter your full name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextField(
                    controller: _textController4,
                    decoration: const InputDecoration(
                      hintText: 'Create a username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextField(
                    controller: _textController5,
                    decoration: const InputDecoration(
                      hintText: 'Please create a password',
                      border: OutlineInputBorder(),
                    ),
                  ),


              SizedBox(
                height: 35, width: 150,
                  child: ElevatedButton(
                    child:const Text('CREATE ACCOUNT'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/fourth');
                },
              ),)


            ],
          )),
       ));
        }}


      //ABOUT
      class ThirdRoute extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(centerTitle: true,
              title:const Text("ABOUT"),
              backgroundColor: Colors.green,),

            body: Center(child:
              Column(children:[
                const Image(image: AssetImage("picture1.png")),
                const Flexible(child: Text(
                    "Welcome to my app, my name is Marcus Mahlatjie and I am the developer behind this app. This falls part of my MTN App Academy course as Module 3, Assessment 1. On the next page you'll find your user Dashboard. Please enjoy your exploring with this app.",
                      overflow: TextOverflow.visible,)),
                const Image(image: AssetImage("picture4.jfif")),

                ElevatedButton(
                  child:const Text('DASHBOARD'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fourth');
                  },
                ),
             ]),
          ));
        }}

      //DASHBOARD
      class FourthRoute extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(centerTitle: true,
              title:const Text("DASHBOARD"),
              backgroundColor: Colors.green,),

          body: Center(child:(Column(children: [
                  const Image(image: AssetImage("picture1.png")),


                Row(mainAxisAlignment: MainAxisAlignment.center, children:[
                  SizedBox(
                    height: 35, width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(width:3, color:Colors.white),),
                      child:const Text('ABOUT'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/third');
                      },
                    ),),
                ]),

                Row(mainAxisAlignment: MainAxisAlignment.center, children:[
                  SizedBox(
                    height: 35, width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(width:3, color:Colors.white),),
                      child:const Text('CONNECT'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/fifth');
                      },
                    ),),
                ]),

                Row(mainAxisAlignment: MainAxisAlignment.center, children:[
                  SizedBox(
                    height: 35, width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(width:3, color:Colors.white),),
                      child:const Text('EDIT PROFILE'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/sixth');
                      },
                    ),),
                ]),

            ])
        )));
        }}


        //SPECIAL FEATURE PAGE
      class FifthRoute extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(centerTitle: true,
              title:const Text("CONNECT"),
              backgroundColor: Colors.green,
            ),
              body: Center(child: Column(children: [
                const Expanded(child: Image(image: AssetImage("picture1.png"))),
                const Expanded(child: Image(image: AssetImage("picture4.jfif"))),


                ElevatedButton(
                  child:const Text('DASHBOARD'),
                    onPressed: () {
                    Navigator.pushNamed(context, '/fourth');
          },
          ),
          ])));

        }}


      //USER EDIT PROFILE


      class SixthPage extends State<MainPage>{
        final _textController1 = TextEditingController();
        final _textController2 = TextEditingController();
        final _textController3 = TextEditingController();
        final _textController4 = TextEditingController();

        String name = "";
        String surname = "";
        String phoneNumber = "";
        String email = "";

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(centerTitle: true,
              title:const Text("EDIT USER PROFILE"),
              backgroundColor: Colors.green,),

          body: Column(children: [
            const Expanded(child:Image(image: AssetImage("picture3.png"))),



              TextField(
              controller: _textController1,
              decoration: const InputDecoration(
                hintText: 'Please enter your first name',
                border: OutlineInputBorder(),
              ),
            ),
              TextField(
                controller: _textController2,
                decoration: const InputDecoration(
                  hintText: 'Please enter your surname',
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: _textController3,
                decoration: const InputDecoration(
                  hintText: 'Email address e.g marcusm@gmail.com',
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: _textController4,
                decoration: const InputDecoration(
                  hintText: 'Please enter your phone number',
                  border: OutlineInputBorder(),
                ),
              ),


              Row(mainAxisAlignment: MainAxisAlignment.center
                ,children: [MaterialButton(shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.white))
                    ,onPressed: (){
                      setState(() {
                        name = _textController1.text;
                        surname = _textController2.text;
                        email = _textController3.text;
                        phoneNumber = _textController4.text;
                      });
                    },
                    minWidth: 150,
                    height: 45,
                    color: Colors.blue,
                    child: const Text("Save changes", style: TextStyle(color: Colors.white)))
                ], ),

                  Text("Name: " + name),
                    Text("Surname: " + surname),
                      Text("Email: " + email),
                        Text("Phone number: " + phoneNumber),

            ])
          );
        }}
