import 'package:flutter/material.dart';
import 'package:flutter_app/Login/Movie.dart';

class MultiSelectionExample extends StatefulWidget {
  List<Movie> favoriteMovies;

  MultiSelectionExample(this.favoriteMovies);

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
            widget.favoriteMovies[index].isSelected = !widget.favoriteMovies[index].isSelected;
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            width: double.infinity,
            color: widget.favoriteMovies[index].isSelected
                ? Color(0xFFF3E5F5)
                : null,

            child: Row(
              children: <Widget>[
                Checkbox(
                    value: widget.favoriteMovies[index].isSelected,
                    onChanged: (s) {
                      widget.favoriteMovies[index].isSelected = !widget.favoriteMovies[index].isSelected;
                      setState(() {});
                    }),

                Text(widget.favoriteMovies[index].movieName,
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
      itemCount: widget.favoriteMovies.length,
    );
  }
}
