import 'package:flutter/material.dart';

class CustomSendMoneyTextField extends StatelessWidget {
  const CustomSendMoneyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(

          hintText: 'Type customer name',
          fillColor: const Color(0xffFAFAFA),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color:  Color(0xffFAFAFA),
            ),
              borderRadius: BorderRadius.circular(8)
          ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(8)
        ),

      ),
    );
  }
}
