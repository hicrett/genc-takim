// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_const_constructors, implementation_imports
import 'package:flutter/material.dart';
import 'package:genc_takim/settings/constants.dart';
import 'package:genc_takim/view/LoginRegisterPages/login_page.dart';
import 'package:genc_takim/view/LoginRegisterPages/widgets/textFormField_widget.dart';
import 'package:genc_takim/viewmodel/login_cubit.dart';
import 'package:provider/src/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
        return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          title: Text("Kayıt Ol",style: TextStyle(fontFamily: font,fontSize: 25))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: deviceHeight(context)*0.05),
              child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        SizedBox(
                        width: deviceWidth(context)*0.3,
                        height: deviceWidth(context)*0.3,
                        child: Image.asset("assets/logos/logowhite.png")),

                        SizedBox(width: deviceWidth(context)*0.1),

                        SizedBox(
                        width: deviceWidth(context)*0.3,
                        height: deviceWidth(context)*0.3,
                        child: Image.asset("assets/logos/bakanlik_logo.png")),
                      ],
                  ),
            ),
              Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.black,
                // image: DecorationImage(
                // image: AssetImage("assets/images/bakanlik_logo.png"))
                ),
                child: Container(
              decoration: BoxDecoration(
              color: Colors.black,
              //  image: DecorationImage(
              //    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
              //  image: AssetImage("assets/images/bakanlik_logo.png"))
              ),
              child: Container(
                height: deviceHeight(context)*0.6,
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: const Text("Kayıt Ol",
                        style: TextStyle(
                          fontFamily: font,
                          color: Colors.white,
                          fontSize: 25
                        )),
                      ),
                      TextFormFieldWidget(
                        leading: "Ad Soyad",
                        labelText: "Ad ve Soyadınızı giriniz",
                        controller: context.read<LoginCubit>().emailController),
                      TextFormFieldWidget(
                        leading: "E - Posta",
                        labelText: "E - Posta adresinizi giriniz",
                        controller: context.read<LoginCubit>().emailController),
                      TextFormFieldWidget(
                        leading: "Telefon Numarası",
                        labelText: "Telefon numaranızı giriniz",
                        controller: context.read<LoginCubit>().emailController),
                      TextFormFieldWidget(
                        leading: "Doğum Tarihi",
                        labelText: "Doğum Tarihinizi giriniz",
                        controller: context.read<LoginCubit>().emailController),
        
                      Padding(
                        padding: const EdgeInsets.all(defaultPadding*2),
                        child: SizedBox(
                          width: deviceWidth(context)*0.6,
                          height: deviceHeight(context)*0.06,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )
                            ),
                            child: Text("Devam",
                            style: TextStyle(
                              fontFamily: font,
                              color: Colors.white,
                              fontSize: 20
                            )),
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                            }),
                        ),
                      ),
                    ],
                  ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
