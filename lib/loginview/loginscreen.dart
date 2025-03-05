import 'package:flutter/material.dart';
import 'package:instragram_project_02/Forget/forgetScreen.dart';
import 'package:instragram_project_02/SignUp/signupscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  final formState=GlobalKey<FormState>();

  bool OboscuredIndex=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 550,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black38),
                ),
                
                
                child: Form(
                  key: formState,
                  child: SingleChildScrollView(
                    child: SafeArea(
                      child: Column(
                          
                        children: [
                          
                          Padding(padding: EdgeInsets.symmetric(vertical: 20),
                            child: Image.asset("assets/image/logo.png",color: Colors.black,height:100,),
                          ),
                          
                          
                          Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: TextFormField(
                            validator: (value) {
                              if(value!.isEmpty){
                                return " Enter correct Email";
                              }else{
                                return null;
                              }
                          
                            },
                            decoration: InputDecoration(
                            border: OutlineInputBorder(
                              //borderSide: BorderSide(color: Colors.white)
                              borderRadius: BorderRadius.circular(20)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green,width: 2,),
                              borderRadius: BorderRadius.circular(20),
                            ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue,width: 2,),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              label: Text("Email"),
                              hintText: "Enter your Email",
                            prefixIcon: Icon(Icons.email)
                          
                          ),
                          
                          ),
                          ),
                          
                          
                          Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: TextFormField(
                              validator: (value) {
                                if(value!.isEmpty){
                                  return "Enter Correct Password";
                                }else{
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                              border: OutlineInputBorder(
                                //borderSide: BorderSide(color: Colors.white)
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green,width: 2,),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue,width: 2,),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              label: Text("Password"),
                              hintText: "Enter your Password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(onPressed: () {
                                setState(() {
                                  OboscuredIndex=!OboscuredIndex;
                                });
                              }, icon: Icon(OboscuredIndex?Icons.visibility:Icons.visibility_off))
                          
                            ),
                              obscureText: OboscuredIndex,
                              obscuringCharacter: "*",
                            ),
                          ),
                          
                          
                          Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 50),
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              setState(() {
                                formState.currentState!.validate();
                              });
                          
                            },
                            child: Text("Log in",style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          ),
                          
                          SizedBox(height: 5,),
                          
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 0.5,
                                    color: Colors.black87,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("  Or Continue with  "),
                                ),
                          
                                Expanded(
                                  child: Divider(
                                    thickness: 0.5,
                                    color: Colors.black87,
                                  ),
                                ),
                          
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                child: Image.asset("assets/image/fblogo.png",height: 25,),
                              ),
                              Text("Login With Facebook",style: TextStyle(
                                color: Colors.blue
                              ),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Forgetscreen(),));
                            },
                            child: Text("Forget Password?",style: TextStyle(
                              color: Colors.blueAccent.withOpacity(.7)
                            ),),
                          ),
                          
                        ],
                      ),
                          
                    ),
                  ),
                ),
                
              ),
              SizedBox(height: 5,),
              Container(
                height: 100,
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don`t Have an Account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signupscreen(),));
                      },
                
                      child: Text("Sign Up",style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                )
              )
                
                
                
                
            ],
                
          ),
        ),
      ),





    );
  }
}
