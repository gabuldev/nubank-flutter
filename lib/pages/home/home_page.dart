import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/card_home.dart';
import 'package:nubank/pages/home/widgets/card_bottom.dart';
import 'package:nubank/pages/home/widgets/app_bar_home.dart';
import 'package:nubank/pages/home/bloc/bloc_home.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  BlocHome bloc = BlocHome();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    List<Widget>  _pages = [
      CardHome(),
      CardHome(),
      CardHome(),
      CardHome(),
      CardHome(),
      CardHome(),
      CardHome(),
      CardHome(),
      CardHome(),
      CardHome(),
      ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(109, 33, 119, 1.0),
      body: Container(
        color: Color.fromRGBO(109, 33, 119, 1.0),
        child: Column(
          children: <Widget>[
            //CARD PAGE VIEW
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
              child: Container(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.55),
                  child: PageView.builder(
                      itemCount: _pages.length,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) => bloc.pageChange(index: index),
                      itemBuilder: (context, index) {
                        return _pages[index];
                      })),
            ),

            //DOT PAGE
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                constraints: BoxConstraints(
                    minWidth: 15.0*_pages.length <= MediaQuery.of(context).size.width ?  15.0*_pages.length : MediaQuery.of(context).size.width,
                    maxWidth: 15.0*_pages.length <= MediaQuery.of(context).size.width ?  15.0*_pages.length : MediaQuery.of(context).size.width,
                    maxHeight: 20.0),
                child: ListView.builder(
                    itemCount: _pages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: StreamBuilder(
                            stream: bloc.positionPage.stream,
                            builder: (context,snapshot){
                           return  snapshot.hasData?
                            CircleAvatar(
                                  radius: 3.5,
                                  backgroundColor: index == snapshot.data
                                  ? Colors.white
                                      : Color.fromRGBO(145, 64, 169, 1.0),
                              ) : Container();
                            }),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height * 0.16),
        child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardBottom();
            }),
      ),
    );
  }
}
