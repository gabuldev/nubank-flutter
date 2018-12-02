import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(109, 33, 119, 1.0),
        body: Column(
          children: <Widget>[
            new Padding(padding: EdgeInsets.only(top: 30.0),child: Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height*0.11
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: new Column(children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Image.network("https://direitosbrasil.com/wp-content/uploads/2017/02/nubank-2006466_960_720.png",width: 70.0,height: 40.0,color: Colors.white,fit:BoxFit.fitHeight,),
                    new Text("Sara",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.06),)
                  ],),
                  Center(child: Icon(Icons.keyboard_arrow_down,color: Colors.white,),)
                ],),
              ),
            ),

            ),

            Padding(
              padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.6
                ),
                child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left:22.0),
                    child: Container(
                      constraints: BoxConstraints(
                          minWidth: MediaQuery.of(context).size.width * 0.9,
                          maxWidth: MediaQuery.of(context).size.width * 0.9,
                          maxHeight: MediaQuery.of(context).size.height * 0.6,
                          minHeight: MediaQuery.of(context).size.height * 0.6),
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(2.0)),
                      child: Stack(
                        children: <Widget>[

                          new Positioned(
                              top: 20.0,
                              left: 20.0,
                              child: Icon(Icons.crop_square,size: 40.0,color: Colors.grey.shade700,)),

                          new Positioned(
                              top: MediaQuery.of(context).size.height*0.2,
                              left: 30.0,
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Text("FATURA ATUAL",style: TextStyle(color: Colors.lightBlue,fontSize: MediaQuery.of(context).size.width*0.05),),
                                  new Text("R\$: 539,22",style: TextStyle(color: Colors.lightBlue,fontSize: MediaQuery.of(context).size.width*0.10)),
                                  new Row(children: <Widget>[
                                    new Text("Limite disponível ",style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.05),),
                                    new Text("R\$ 539,22",style: TextStyle(color: Colors.green,fontSize: MediaQuery.of(context).size.width*0.05),)

                                  ],)

                                ],)),

                          new Positioned(
                            bottom: 0.0,
                            child: new Container(
                              color: Colors.grey.shade300,
                              constraints: BoxConstraints(
                                  minWidth: MediaQuery.of(context).size.width * 0.9,
                                  maxHeight: MediaQuery.of(context).size.height * 0.15,
                                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                                  minHeight: MediaQuery.of(context).size.height * 0.15),
                              child: Center(
                                child: new ListTile(
                                  title: Text("Compra mais recente em Pag*Sorvetesrequibom no valor de RS 6,30 terça"),
                                  leading: Icon(Icons.fastfood),
                                  trailing: Icon(Icons.keyboard_arrow_right),

                                ),
                              ),
                            ),
                          ),

                          new Positioned(
                              top: 35.0,
                              right: 20.0,
                              child: new Container(
                                constraints: BoxConstraints(
                                    minWidth: MediaQuery.of(context).size.width * 0.03,
                                    minHeight: MediaQuery.of(context).size.height * 0.38,
                                    maxWidth: MediaQuery.of(context).size.width * 0.03,
                                    maxHeight: MediaQuery.of(context).size.height * 0.38),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: new Column(children: <Widget>[
                                  Expanded(flex: 1,child: new Container(color: Colors.deepOrange,)),
                                  Expanded(flex: 2,child: new Container(color: Colors.blue,)),
                                  Expanded(flex: 2,child: new Container(color: Colors.green,)),

                                ],),)
                              )),


                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: 20.0
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.45),
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: CircleAvatar(radius: 3.5,backgroundColor:
                          index == 0 ? Colors.white :
                          Color.fromRGBO(145, 64, 169, 1.0) ,),
                        );
                      }),
                ),
              ),
            )

          ],
        ),
      bottomNavigationBar: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height*0.16
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color.fromRGBO(145, 64, 169, 1.0)
                    ),
                    constraints: BoxConstraints(
                         minWidth: MediaQuery.of(context).size.width*0.26,
                        maxWidth: MediaQuery.of(context).size.width*0.26,
                        maxHeight: MediaQuery.of(context).size.height*0.15
                    ),
                    child: new Stack(children: <Widget>[
                    Positioned(
                      left: 1.0,
                      child: Icon(Icons.perm_identity,size: 30.0,color: Colors.white,),
                    ),
                      Positioned(
                        bottom: 2.0,
                        left: 3.0,
                        child: new Text("Indicar\namigos",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                      )
                    ],),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
