import 'package:flutter/material.dart';

class CustomInvoiceDivider extends StatelessWidget {
  const CustomInvoiceDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 24),
      child:  Divider(height: 1,thickness: 1,color: Color(0xffF1F1F1),),
    );
  }
}