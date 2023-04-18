import 'package:flutter/material.dart'; 
  
void main() => runApp(const MyApp()); 
  
class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key); 
  
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: Scaffold( 
        backgroundColor : Colors.grey[300],
        body: const MyStatefulWidget(), 

      ), 
    ); 
  } 
} 
  
class MyStatefulWidget extends StatefulWidget { 
  const MyStatefulWidget({Key? key}) : super(key: key); 
  
  @override 
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState(); 
} 
  
class _MyStatefulWidgetState extends State<MyStatefulWidget> { 
  TextEditingController nameController = TextEditingController(); 
  TextEditingController passwordController = TextEditingController(); 
  
  @override 
  Widget build(BuildContext context) { 
    return Padding( 
        padding: const EdgeInsets.all(10), 
        child: ListView( 
          children: <Widget>[ 

            Padding(
              padding: EdgeInsets.only(top:10, bottom:10),
              
            ),
            
            Container( 
                alignment: Alignment.center, 
                child: Image.asset(
                  'images/shopper.png',
                  height :100,
                  width :100,)
                
            ),

            Container( 
                alignment: Alignment.center, 
                padding: const EdgeInsets.all(10), 
                child: const Text( 
                  'MyShopper', 
                  style: TextStyle( 
                      color: Colors.black, 
                      fontWeight: FontWeight.w500, 
                      fontSize: 30), 
                )), 
             
            Container( 
              padding: const EdgeInsets.all(10), 
              child: TextField( 
                controller: nameController, 
                decoration: const InputDecoration( 
                  border: OutlineInputBorder(), 
                  labelText: 'Username', 
                ), 
              ), 
            ), 
            Container( 
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0), 
              child: TextField( 
                obscureText: true, 
                controller: passwordController, 
                decoration: const InputDecoration( 
                  border: OutlineInputBorder(), 
                  labelText: 'Password', 
                ), 
              ), 
            ), 
             
            Container( 
                height: 50, 
                
                child: ElevatedButton( 
                  child: const Text('Login'), 
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    onPrimary: Colors.white,
                    onSurface: Colors.black,
                  ),

                  onPressed: () { 
                    print(nameController.text); 
                    print(passwordController.text); 
                  }, 
                ) 
            ), 
            Row( 
              children: <Widget>[ 
                const Text('Not a User ?'), 
                TextButton( 
                  child: const Text( 
                    'Register here', 
                    style: TextStyle(fontSize: 20), 
                  ), 
                  onPressed: () { 
                    //signup screen 
                  }, 
                ) 
              ], 
              mainAxisAlignment: MainAxisAlignment.center, 
            ), 
          ], 
        )); 
  } 
}
