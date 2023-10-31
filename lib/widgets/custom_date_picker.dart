import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({Key? key}) : super(key: key);

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 300, 0),
           child: Text(
            'Start date',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
         ),
        Container(
          padding: const EdgeInsetsDirectional.fromSTEB(20,8, 20, 0),
          height: 150,
            child: TextField(
              controller: dateinput,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.calendar_month,size: 30,),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 5.0),
                ),
                hintText: 'Sep 12,2023',
              ),
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));

                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(formattedDate);

                  setState(() {
                    dateinput.text = formattedDate;
                  });
                } else {
                  print("Date is not selected");
                }
              },
            ),
          ),
      ],
    );
  }
}
