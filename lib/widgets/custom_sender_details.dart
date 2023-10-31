import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSenderDetails extends StatefulWidget {
  const CustomSenderDetails({Key? key}) : super(key: key);

  @override
  State<CustomSenderDetails> createState() => _CustomSenderDetailsState();
}

class _CustomSenderDetailsState extends State<CustomSenderDetails> {
  bool isOrangeButtonActive = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 260, 0),
          child: Text(
            'Sender details',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 130, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      isOrangeButtonActive
                          ? const Color(0xffEA560D)
                          : const Color(0xffE7ECF0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text(
                    'Add address',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      isOrangeButtonActive
                          ? const Color(0xffE7ECF0)
                          : const Color(0xffEA560D),
                    ),
                  ),
                  onPressed: () => context.go('/screen2'),
                  child: const Text(
                    'Select address',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff919EAB),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
