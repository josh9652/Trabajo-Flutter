import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Style.dart';
import 'package:flutter_project/HotelPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'mont'
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 27,
          ), onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 27,
              color: Colors.grey,
            ), onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bienvenido a Pa Que Sepa's", style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700
                    ),),
                    Container(
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25)),
                                    color: greenBtn
                                ),
                                child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Icon(Icons.add_shopping_cart,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        Text("Compra", style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700
                                        ))
                                      ],
                                    )
                                )
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 5),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                  color: greenBtn.withOpacity(0.7)
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                    "Encuentra los restaurantes cerca de ti!", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
                SizedBox(height: 15,),
                SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: 20),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.55,
                          height: 350,
                          padding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  30)),
                              color: blue,
                              boxShadow: [BoxShadow(spreadRadius: 0,
                                  offset: Offset(0, 10),
                                  blurRadius: 0,
                                  color: blue.withOpacity(0.4))
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "asset/images/food1.png")
                                        )
                                    )
                                ),
                              ),
                              SizedBox(height: 15,),
                              Text(
                                "Primer plato, cerca de ti", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                              ),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  Text("El mas pedido", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Este platillo se encuentra cerca a tu ubicacion, no te lo pierdas!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                            children: [
                              Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.35,
                                height: 165,
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30)),
                                    color: green,
                                    boxShadow: [
                                      BoxShadow(spreadRadius: 0,
                                          offset: Offset(0, 10),
                                          blurRadius: 0,
                                          color: green.withOpacity(0.4))
                                    ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "asset/images/food2.png")
                                              )
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Text("Primer plato, cerca de ti",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700
                                      ),),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                        Text("El segundo mas pedido",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
                                          ),)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ]
                        ),
                      ],
                    )
                ),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Lugares cerca de ti", style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700
                    ),),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                placesWidget("hotel1", "El Tablón"),
                SizedBox(height: 20,),
                placesWidget("hotel2", "La Cecilia"),
                SizedBox(height: 20,),
                placesWidget("hotel3", "Norky's"),
                SizedBox(height: 20,),
                placesWidget("hotel1", "La Italiana"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row placesWidget(String img, String name) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/images/$img.png")
              )
          ),
        ),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$name", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
                Row(
                  children: [
                    Icon(Icons.star, size: 20, color: Colors.orange,),
                    Icon(Icons.star, size: 20, color: Colors.orange,),
                    Icon(Icons.star, size: 20, color: Colors.orange,),
                    Icon(Icons.star, size: 20, color: Colors.orange,),
                    Icon(Icons.star, size: 20, color: Colors.orange,),
                  ],
                ),
                Text(
                  "Bienvenidos al Tablón, encontrara muchos platillos que podremos ofrecerle a usted!",
                  style: TextStyle(
                      fontSize: 12
                  ),)
              ]
          ),
        ),
        InkWell(
          onTap: openHotelPage,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: greenBtn
              ),
              child: Text("Ordene Ahora", style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700
              ),)
          ),
        )
      ],
    );
  }

  void openHotelPage()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HotelPage()));
  }
}



