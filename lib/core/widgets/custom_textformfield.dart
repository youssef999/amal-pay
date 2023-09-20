

import 'package:flutter/material.dart';

import '../resources/color_manager.dart';



class CustomTextFormField extends StatefulWidget {

  final String hint;
  bool obs ;
  bool obx;
  bool? input;
  int ?max;
  TextInputType type;
  final Color color;
  Function ontap;
   TextEditingController controller;

  CustomTextFormField({Key? key,
    required this.hint,
    required this.obx,
    required this.ontap,
    required this.type,
    this.input,
    this.max,
    required this.obs,
    required this.color,
    required this.controller,
  }
      ) : super(key: key) ;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  @override
  Widget build(BuildContext context) {




          if(widget.obx==true) {
         return
           Container(
             decoration: BoxDecoration(
               // border:Border.all
               //   (color:ColorManager.backColor),
               boxShadow: [
                 BoxShadow(
                   color: Colors.blue[200]!.withOpacity(0.4),
                   spreadRadius: 2,
                   blurRadius: 5,
                   offset: const Offset(0, 3), // changes the shadow offset
                 ),
               ],
             ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(
                 maxLines: 1,
                 style: TextStyle(color:widget.color),
                 keyboardType: TextInputType.datetime,
                  obscureText:widget.obs,
                  onTap:widget.ontap(),
                  controller: widget.controller,
                  decoration: InputDecoration(
                    hintText:widget.hint,
                    hintStyle:  TextStyle(color:Colors.grey[600]),
                    fillColor:Colors.white,
                    suffixIcon: IconButton(
                      icon: Icon(
                        color: widget.color,
                        widget.obs ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          widget.obs= !widget.obs;
                        });
                      },
                    ),

                  ),

                ),
             ),
           );
          }

          if(widget.obx==false) {
          return  Container(
            decoration: BoxDecoration(
              // border:Border.all
              //   (color:ColorManager.backColor),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue[200]!.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes the shadow offset
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                maxLines: 1,
                keyboardType: widget.type  ,
                style: TextStyle(color:ColorManager.textColorDark),
                  obscureText:widget.obs,
                  controller: widget.controller,
                  decoration: InputDecoration(
                    hintText:widget.hint,
                    hintStyle:  TextStyle(color:Colors.grey[600]),
                    fillColor:Colors.white,
                  ),
                ),
            ),
          );
          }

          if(widget.input ==true){
            return  TextFormField(
              onTap:widget.ontap(),
              obscureText:widget.obs,
              keyboardType: TextInputType.number,
              controller: widget.controller,
              decoration: InputDecoration(
                hintText:widget.hint,
                hintStyle: const TextStyle(color:Colors.grey),
                fillColor:Colors.white,
              ),
            );
          }

          return Container();

  }
}
