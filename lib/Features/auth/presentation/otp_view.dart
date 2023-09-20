


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jail_app/core/widgets/Custom_Text.dart';
import 'package:otp_autofill/otp_autofill.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/widgets/Custom_button.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/msg.dart';
import '../../home/presentation/home_view.dart';
import '../Manager/auth_controller.dart';


class OtpView extends StatefulWidget {

  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {

  final scaffoldKey = GlobalKey();
  late OTPTextEditController controller;
  late OTPInteractor _otpInteractor;


  @override
  void initState() {
    super.initState();
    _initInteractor();
    controller = OTPTextEditController(
      codeLength: 5,
      //ignore: avoid_print
      onCodeReceive: (code) => print('Your Application receive code - $code'),
      otpInteractor: _otpInteractor,
    )..startListenUserConsent(
          (code) {
        final exp = RegExp(r'(\d{5})');
        return exp.stringMatch(code ?? '') ?? '';
      },
      // strategies: [
      //   SampleStrategy(),
      // ],
    );
  }

  Future<void> _initInteractor() async {
    _otpInteractor = OTPInteractor();

    // You can receive your app signature by using this method.
    final appSignature = await _otpInteractor.getAppSignature();


  }

  @override
  void dispose() {
    controller.stopListen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authController=Get.find<AuthController>();
    return Scaffold(
      appBar:CustomAppBar(' ',true
          , 5),
      body:
      SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: [
              SizedBox(height: 21,),
              SizedBox(
                height: 100,
                child: Image.asset('assets/images/aml.png'),
              ),
              SizedBox(height: 20,),
              const Custom_Text(text: 'ادخل الرمز الذي تم ارساله لرقم الهاتف ',
                fontSize: 19,alignment: Alignment.center,
              ),
              const SizedBox(height: 66,),
              Center(
                child: OTPTextField(
                  //controller:_otpInteractor,
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 15,
                    style: const TextStyle(fontSize: 17),
                    onChanged: (pin) {

                      print("Changed: $pin");

                    },
                    onCompleted: (pin) {
                      print("Completed: $pin");
                    }),
              ),
              SizedBox(height:
              MediaQuery.of(context).size.height*0.50,),
              // Row(
              //   children: [
              //     const SizedBox(width: 40,),
              //     Custom_Text(text: 'didnt recieve the code ? ',
              //       fontSize: 18,color:ColorManager.primary,
              //     ),
              //     const SizedBox(width: 15,),
              //     InkWell(
              //       child: Custom_Text(text: 'Resend Code ',
              //         fontSize: 16,color:ColorManager.textColorDark,
              //       ),
              //       onTap:(){
              //
              //       },
              //     ),
              //   ],
              // ),
              const SizedBox(height: 10,),
              SizedBox(
                width: 321,
                child: CustomButton(text: 'تاكيد '
                    , onPressed: (){

                      appMessage(text: 'تم إنشاء الحساب بنجاح ');

                  Get.to(const HomeView());

                    }, color1:ColorManager.primary,
                    color2: ColorManager.textColorLight),
              ),
              SizedBox(height: 22,)
            ],
          ),
        ),
      ),
    );
  }
}
