import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Service.dart';

class MultiSelectionExample extends StatefulWidget {
  List<Service> Services;

  MultiSelectionExample(this.Services);

  @override
  _MultiSelectionExampleState createState() => _MultiSelectionExampleState();
}

class _MultiSelectionExampleState extends State<MultiSelectionExample> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            widget.Services[index].isSelected = !widget.Services[index].isSelected;
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            width: double.infinity,
            color: widget.Services[index].isSelected
                ? Color(0xFFF3E5F5)
                : null,

            child: Row(
              children: <Widget>[
                Checkbox(
                    value: widget.Services[index].isSelected,
                    onChanged: (s) {
                      widget.Services[index].isSelected = !widget.Services[index].isSelected;
                      setState(() {});
                    }),

                Text(widget.Services[index].ServiceName,
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: widget.Services.length,
    );
  }
}
