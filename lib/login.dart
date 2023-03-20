import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Login extends StatelessWidget {
  const Login();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 40,),
          IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: const Icon(Icons.close,
          size: 30,
          color: Color(0xFF151522),
          ),alignment: Alignment.topLeft,),
          const SizedBox(height: 50,),
          Text('Welcome Back',
          style: GoogleFonts.poppins(fontWeight:FontWeight.w400,fontSize:28,color: const Color(0xFF633820)),),
          const SizedBox(height: 10,),
          Text('Signing up or login to see',
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(color:const Color.fromARGB(255, 99, 56, 32),fontWeight:FontWeight.w300,fontSize: 17,),),
          Text('our top picks for you.',
          style: GoogleFonts.poppins(color: const Color.fromARGB(255, 99, 56, 32),fontWeight:FontWeight.w300,fontSize: 17,),),
          const SizedBox(height: 50,),
          Text('Email Address',style: GoogleFonts.poppins(fontWeight:FontWeight.w400,fontSize:15,color: const Color(0xFF633820)),),
          const SizedBox(height: 15,),
          TextFormField(decoration:InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 50),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Color.fromARGB(255,99,56,32))
                ),   
              ),),
              const SizedBox(height:20,),
              Text('Password',style: GoogleFonts.poppins(fontWeight:FontWeight.w400,fontSize:15,color:const Color(0xFF633820)),),
              const SizedBox(height: 15,),
              TextFormField(decoration: InputDecoration(
                contentPadding:const EdgeInsets.symmetric(horizontal: 50),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Color.fromARGB(255,99,56,32))
                ),    
              ),),
              const SizedBox(height: 20,),
              MaterialButton(onPressed: (){},
                padding:const EdgeInsets.symmetric(),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFF6A9347)
                  ),
                  child:Center(child: Text('Login',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.w300,fontSize: 16,),)),
                ),
              ),
              const SizedBox(height: 25,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forgot password?',style: GoogleFonts.poppins(color: const Color(0xFF633820),fontWeight:FontWeight.w400,fontSize: 15,),),
                    Text('Reset here',style: GoogleFonts.poppins(color: const Color(0xFF6979F8),fontWeight:FontWeight.w400,fontSize: 15,),),
                  ],
                ),
              ),
              const SizedBox(height: 60,),
              Center(child: Text('Or Login with',style: GoogleFonts.poppins(color: const Color(0xFF633820),fontWeight:FontWeight.w400,fontSize: 15,),)),
              const SizedBox(height: 35,),
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
        ],
      ),
    );
  }
}