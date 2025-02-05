import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/common/widgets/login/login_method_body.dart';

class LoginMethodWidget extends StatelessWidget {
  const LoginMethodWidget({
    super.key,
    required this.headerText,
  });

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Center(
              child: Text(
            headerText,
            style: GoogleFonts.instrumentSerif(fontSize: 36),
            textAlign: TextAlign.center,
          )),
        ),
        SizedBox(
          height: 32,
        ),
        LoginMethodBody()
      ],
    );
  }
}
