import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:semana3_app/Pages/detalle.page.dart';
import 'package:semana3_app/Models/articulo.model.dart';

class CardWidget extends StatelessWidget{
  final Articulo articulo;

  CardWidget({this.articulo});
  @override
  Widget build(BuildContext context){
    return GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetallePage(articulo: articulo)
              )
          );
        },
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children:  [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(18,20,0,20),
                    child: Row(
                      children: [
                        Text(DateFormat("dd-MM-yyy").format(articulo.publishedAt))
                      ],
                    ),

                  ),
                  articulo.urlToImage == ''
                      ? Image(image: AssetImage('assets/image.jpg'))
                      : FadeInImage(
                      placeholder: AssetImage('assets/loading.gif'),
                      image: NetworkImage(articulo.urlToImage)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(articulo.title,),

                  ),


                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.black26, borderRadius: BorderRadius.circular(5)),
            )

        )
    );
  }
}