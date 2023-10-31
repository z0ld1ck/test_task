import 'package:flutter/material.dart';

class InfoTextFields extends StatefulWidget {
  const InfoTextFields({Key? key}) : super(key: key);

  @override
  State<InfoTextFields> createState() => _InfoTextFieldsState();
}

class _InfoTextFieldsState extends State<InfoTextFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 25, 320, 0),
          child: Text(
            'Full name*',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                size: 30,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 5.0),
              ),
              hintText: 'Danilev Egor',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 330, 0),
          child: Text(
            'Email*',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                size: 30,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 5.0),
              ),
              hintText: 'egor_zu@email.com',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 12, 285, 0),
          child: Text(
            'Phone Number*',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
                size: 30,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 5.0),
              ),
              hintText: '+375726014690',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 28, 330, 0),
          child: Text(
            'Country*',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.location_on,
                size: 30,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 5.0),
              ),
              hintText: 'Belarus',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 12, 350, 0),
          child: Text(
            'City*',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.location_city_outlined,
                size: 30,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 5.0),
              ),
              hintText: 'Minsk',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 28, 290, 0),
          child: Text(
            'Address line 1*',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.my_location,
                size: 30,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 5.0),
              ),
              hintText: 'Derzhinskogo 3b',
            ),
          ),
        ),
        Padding(
          padding:const EdgeInsetsDirectional.fromSTEB(10, 0,250, 0),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Add address line +',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color:Color(0xffEA560D),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 320, 0),
          child: Text(
            'Postcode*',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.markunread_mailbox,
                size: 30,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 5.0),
              ),
              hintText: '220069',
            ),
          ),
        ),
      ],
    );
  }
}
