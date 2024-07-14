import 'package:ai_chat_app/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/custom_gradient_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent[200],
      title: GradientText(text: 'Generate Image',size: 20,bolt: FontWeight.w600,),),
      backgroundColor: Colors.deepPurpleAccent[100],
      body: SafeArea(
        child: Column(
          children: [
            10.vs(),
            Expanded(
                child: Container(
                    width: double.maxFinite,
                   )),
            Container(
              height: 48,
              margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 26),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '   Please enter your prompt . . .',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 24 / 12,
                          color:  Color(0xFF7A7A7A),
                        ),
                      ),
                    ),
                  ),
                  InkWell(child: SvgPicture.asset('assets/icons/send_msg.svg'))
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
