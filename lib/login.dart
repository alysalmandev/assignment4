import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Back, User!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Welcome Back! Glad to see you again!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your E-mail e.g: alysalmandev@as.com",
                border: OutlineInputBorder(), 
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10), 
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true, 
              decoration: InputDecoration(
                hintText: "Enter your account password",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: Text("I Really forgot my password!", style: TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15),
            
              ),
              child: Text("Login"),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OR"),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaIcon(
                    imageUrl: "https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png",
                  ),
                  Text("Google"),
                  SizedBox(width: 20),
                  SocialMediaIcon(
                    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/2048px-Microsoft_logo.svg.png",
                  ),
                  Text("Microsoft"),
                  SizedBox(width: 20),
                  SocialMediaIcon(
                    imageUrl: "https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Facebook_f_logo_%282021%29.svg/2048px-Facebook_f_logo_%282021%29.svg.png",
                  ),
                  Text("Facebook"),
                ],
              ),
            ),
            SizedBox(height: 100,),
            Align(
              alignment: Alignment.center, 
              child: Text("Dont have an account? Register Now")),
          ],
        ),
      ),
    );
  }
}


class SocialMediaIcon extends StatelessWidget {
  final String imageUrl;

  const SocialMediaIcon({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Image.network(imageUrl),
    );
  }
}
