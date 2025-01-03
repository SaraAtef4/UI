import 'package:cat_task2/costumize_textfield.dart';
import 'package:cat_task2/costumized_label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedArrowLeft02,
            color: Colors.black,
            size: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedSettings02,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: [
                Image(image: AssetImage('assets/images/profile_photo.png')),
                Positioned(
                  right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xffEE8924),
                      child: IconButton(


                                        icon: HugeIcon(
                        icon: HugeIcons.strokeRoundedEdit02, color: Colors.white,size: 20,),
                                        onPressed: () {},
                                      ),
                    ))
              ]),
              SizedBox(height: 10,),
              Text('GFXAgency',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      fontFamily: "Poppins")),
              Text('UI UX DESIGN',
                  style: TextStyle(
                      color: Color(0xffABABAB),
                      fontSize: 14,
                      fontFamily: "Poppins")),
              SizedBox(height: 20),
              CostumizedLabel(text: "Your Email"),
              SizedBox(
                height: 10,
              ),
              CosumizedTextfield(
                icon: HugeIcon(
                    icon: HugeIcons.strokeRoundedMail01,
                    color: Color(0xffABABAB)),
                hintText: 'example@email.com',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 17),
              CostumizedLabel(text: "Phone number"),
              SizedBox(
                height: 10,
              ),
              CosumizedTextfield(
                icon: HugeIcon(
                    icon: HugeIcons.strokeRoundedCall,
                    color: Color(0xffABABAB)),
                hintText: 'Phone number',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 17),
              CostumizedLabel(text: "Website"),
              SizedBox(
                height: 10,
              ),
              CosumizedTextfield(
                hintText: 'www.example.com',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 17),
              CostumizedLabel(text: "Password"),
              SizedBox(
                height: 10,
              ),
              CosumizedTextfield(
                icon: HugeIcon(
                    icon: HugeIcons.strokeRoundedCircleLock01,
                    color: Color(0xffABABAB)),
                hintText: 'Enter your password',
                keyboardType: TextInputType.text,
                isPassword: true,
              ),
              SizedBox(height: 30,),
              InkWell(child: Container(width:3335,height:58 ,decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),border:Border.all(
                color: Color(0xffEE8924)
              )),child: Center(child: Text("Logout",style: TextStyle(fontFamily: "Poppins",fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xffEE8924)),)),),onTap: (){},)

            ],
          ),
        ),
      ),
    );
  }
}
