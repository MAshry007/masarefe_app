import 'package:flutter/material.dart';

class CustomPolicyText extends StatefulWidget {
  const CustomPolicyText({super.key});

  @override
  State<CustomPolicyText> createState() =>
      _CustomPolicyTextState();
}

class _CustomPolicyTextState
    extends State<CustomPolicyText> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Transform.translate(
          offset: Offset(0, 0),
          child: Transform.scale(
            scale: 1.7,
            child: Checkbox(
              fillColor: WidgetStateProperty.all(
                Colors.white,
              ),
              side: WidgetStateBorderSide.resolveWith((
                Set<WidgetState> states,
              ) {
                return const BorderSide(
                  color: Colors.black,
                  width: 1.5,
                );
              }),
              checkColor: Colors.black,
              activeColor: Colors.white,
              materialTapTargetSize:
                  MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
              value: isChecked,
              onChanged: (bool? checkBoxValue) {
                setState(() {
                  isChecked = checkBoxValue ?? false;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'I AGREE TO THE',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'TERMS OF PROTOCOL',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'InterBold',
                        decoration:
                            TextDecoration.underline,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'AND',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'ACKNOWLEDGE THE',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'DATA PRIVACY ACT',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'InterBold',
                        decoration:
                            TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
