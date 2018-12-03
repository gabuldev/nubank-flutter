import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color.fromRGBO(109, 33, 119, 1.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  "https://direitosbrasil.com/wp-content/uploads/2017/02/nubank-2006466_960_720.png",
                  width: 70.0,
                  height: 40.0,
                  color: Colors.white,
                  fit: BoxFit.fitHeight,
                ),
                new Text(
                  "Sara",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize:
                      MediaQuery.of(context).size.width * 0.06),
                )
              ],
            ),
            Center(
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
