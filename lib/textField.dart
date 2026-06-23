import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController  = TextEditingController();
  TextEditingController passwordController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar:AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Login",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
              color: Colors.blue
            ),),
            SizedBox(height: 10,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text("Email"),
                hint: Text("abdullah@gmail.com"),
                prefixIcon: Icon(Icons.email),
                suffix: Icon(Icons.account_balance),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                label: Text("Password"),
                hint: Text("**************"),
                prefixIcon: Icon(Icons.lock),
                suffix: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                  )
            ),

            ),
            SizedBox(height: 5,),
            Align(
              alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){}, child: Text("Forget Password ?"))),
            SizedBox(height: 10,),
            SizedBox(
              height: 46,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if(emailController.text.isEmpty){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Email is Required")));
                  return ;
                }
                if(passwordController.text.isEmpty){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Password is Required")));
                  return ;
                }
                if(passwordController.text.length < 8){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Password should be more than 8 digits")));
                  return ;
                }
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ), child: Text("Login")),
            ),

            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account ? "),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(onPressed: (){}, child: Text("Signup")))
              ],
            )
          ],
        ),
      ),
    );
  }
}
