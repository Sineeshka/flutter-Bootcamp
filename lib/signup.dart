import 'dart:ffi';
import 'dart:ui';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/login.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({key});
  @override
  State<SignupPage> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height: 812,
          width: 375,
          padding:const EdgeInsets.all(15),
          child: Center(child: ListView(
            children: [
              const SizedBox(height: 78,),
              Center(child: Text("Create an account",
              style:GoogleFonts.poppins(fontSize: 28,
                              color: const Color.fromARGB(255, 99, 56, 32),fontWeight:FontWeight.w400)
                              )),
              const SizedBox(height: 10,),
              Center(
                child: Column(
                  children: [
                    Text('Signing up or login to see',
                    style: GoogleFonts.poppins(color:const Color.fromARGB(255, 99, 56, 32),fontWeight:FontWeight.w300,fontSize: 17,),),
                    Text('our top picks for you.',
              style: GoogleFonts.poppins(color: const Color.fromARGB(255, 99, 56, 32),fontWeight:FontWeight.w300,fontSize: 17,),)
                  ]  
                ),
              ),
              const SizedBox(height:20,),
              TextFormField(decoration:InputDecoration(
                contentPadding:const EdgeInsets.symmetric(horizontal: 50),
                border:OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Color.fromARGB(255,99,56,32))
                ),
                labelText: 'Enter email',    
              ),),
              const SizedBox(height:20,),
              TextFormField(decoration:InputDecoration(
                contentPadding:const EdgeInsets.symmetric(horizontal: 50),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Color.fromARGB(255,99,56,32))
                ),
                labelText: 'Enter password',    
              ),),
              const SizedBox(height:20,),
              TextFormField(decoration: InputDecoration(
                contentPadding:const EdgeInsets.symmetric(horizontal: 50),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Color.fromARGB(255,99,56,32))
                ),
                labelText: 'Retype password',    
              ),),
              const SizedBox(height:20,),
              MaterialButton(onPressed: (){},
                padding:const EdgeInsets.symmetric(),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFF6A9347)
                  ),
                  child:Center(child: Text('Get Started',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.w300,fontSize: 16,),)),
                ),
              ),
              const SizedBox(height: 127,),
              MaterialButton(onPressed: (){},
                padding:const EdgeInsets.symmetric(),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFE1A067)
                  ),
                  child:Center(child: Text('Continue with Google',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.w300,fontSize: 16,),)),
                ),
              ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account?',style: GoogleFonts.poppins(color: const Color(0xFF633820),fontWeight:FontWeight.w400,fontSize: 15,)),
                    TextButton(onPressed: ((){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const Login()));
                    }),
                      child:Text('login',style: GoogleFonts.poppins(color: const Color(0xFF6979F8),fontWeight:FontWeight.w400,fontSize: 15,))),
                  ],
                ),
          ],
          )
          ),
        ),
      )
    );
  }
}