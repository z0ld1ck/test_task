import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:test_task/widgets/custom_date_picker.dart';
import 'package:test_task/widgets/info_textfields.dart';
import 'package:test_task/widgets/next_step_button.dart';
import 'package:test_task/widgets/recipient_address.dart';

import '../widgets/custom_sender_details.dart';

class OrderingPage extends StatefulWidget {
  const OrderingPage({Key? key}) : super(key: key);

  @override
  State<OrderingPage> createState() => _OrderingPageState();
}

class _OrderingPageState extends State<OrderingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ordering',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Step 1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const CustomDatePicker(),
              const CustomSenderDetails(),
              const InfoTextFields(),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 26, 40, 0),
                child: RecipientAddress(),
              ),
              const InfoTextFields(),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 16, 20, 40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 300,
                  height: 52,
                  color: const Color(0xffEA560D),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(150, 16, 133, 0),
                    child: Text(
                      'Next Step',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
