import 'package:flutter/material.dart';

void main() {
  runApp(App(key: Key("key_do_app"), titulo: 'App Flutter'));
}

class App extends StatelessWidget {
  final String titulo;

  const App({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home page",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        backgroundColor: Color(0x7C7D60A1),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1), 
                Text(
                  "Every Purchase\n Will be Made\n With Pleasure",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 1),
                Text(
                  "Buy and Enjoy",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Buypage()),
                          );
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(124, 125, 96, 161),
                    minimumSize: Size(450, 60),
                  ),
                  child: Text(
                    "Start Shopping",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20, width: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Learn()),
                          );
                         
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(200, 50),
                        ),
                        child: Text(
                          "Learn More",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ElevatedButton(
                        onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(200, 50),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x7C7D60A1),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: 
                    (context) => Home())
                
                    );
                
                },
                icon: Icon(Icons.home, color: Colors.white),
                iconSize: 40,
                tooltip: 'Home',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Página de login
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Text("Logar"),
      ),
    );
  }
}
//página de compra
class Buypage extends StatelessWidget{
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar : AppBar(
      title : Text("BuyPage"),
    ),
      body : Center(
        child : Text("Compre"),
      )
  );
  }
}
//página de mais informações
class Learn extends StatelessWidget{
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar : AppBar(
      title: Text("Learn"),
    ),
    body : Center(
    child: Text("About Us"),
    )
  );
  }
}
// botão home
class Home extends StatelessWidget{
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar : AppBar(
      title : Text("HomePage"),

    ),
    body : Center(
      child: Text("Home"),
    )
  );
}
}
