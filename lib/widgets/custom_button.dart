import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap, this.isLoading = false});

  final void Function()? ontap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: isLoading
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: const CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
