import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MovieGalleryApp());
}

class MovieGalleryApp extends StatelessWidget {
  const MovieGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Movies Gallery";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title, style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black87,
        ), 
        body: Container(
          color: Colors.black87,
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 2/3,
            children: List.generate(100, (index) =>
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white60
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  elevation: 1,
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.black87,
                  borderOnForeground: true,
                  shadowColor: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://m.media-amazon.com/images/M/MV5BYWZlOGMzOWItYmU0MS00ZWU2LWEzOWItZTAxMDdlNTNjNjE1XkEyXkFqcGdeQXVyMzI2Mjc1NjQ@._V1_FMjpg_UX1000_.jpg'),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12)
                            ),
                          ),
                          child: Container(
                            child: Stack(
                              children: [
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    left: 0,
                                    child: Container(
                                      child: ClipRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                                          child: Container(
                                            height: 50,
                                            color: Colors.black54,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Drama, Action, Adventure",
                                                    style: TextStyle(
                                                      color: Colors.pinkAccent,
                                                      fontSize: 10
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top:8.0),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Row(
                                                          children:
                                                            List.generate(
                                                                5,
                                                                (index) => Icon(
                                                                  index < 3 ? Icons.star : Icons.star_border_outlined,
                                                                  color: index < 3 ? Colors.pink : Colors.grey,
                                                                  size: 15,
                                                                )
                                                            ),

                                                        ),
                                                        SizedBox(width: 7,),
                                                        Text(
                                                          "120 reviews",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 10
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                )
                              ],
                            )
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shoujo Kageki Revue $index',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                            ),
                            Text(
                                "120 MIN",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            ),
          ),
        ),
      ),
    );
  }
}


