import 'package:flutter/material.dart';
import 'package:flutter_food_recipe/models/recipe.dart';
import 'package:flutter_food_recipe/views/widgets/rating.dart';

class EditPage extends StatefulWidget {
  final Recipe recipe;
  const EditPage({Key key, @required this.recipe}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  int _rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new, size: 35),
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "EDITAR INFORMAÇÔES",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Rating of recipe:"),
                Rating((rating) {
                  setState(() {
                    _rating = rating;
                  });
                }),
                const SizedBox(height: 20),
                const Text("Name of recipe:"),
                const SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  child: TextField(
                    controller: TextEditingController()
                      ..text = widget.recipe.name,
                    style: const TextStyle(fontSize: 15),
                    decoration: const InputDecoration(
                      hintText: "Type the name of recipe",
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Description of recipe:"),
                const SizedBox(height: 5),
                SizedBox(
                  height: 200,
                  child: TextField(
                    controller: TextEditingController()
                      ..text = widget.recipe.description,
                    keyboardType: TextInputType.multiline,
                    style: const TextStyle(fontSize: 15),
                    maxLines: 8,
                    decoration: const InputDecoration(
                      hintText: "Type the description of recipe",
                      contentPadding: EdgeInsets.only(left: 10, top: 20),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     IconButton(
//                       icon: starId[0]
//                           ? const Icon(Icons.star, color: Colors.orange)
//                           : const Icon(Icons.star_border),
//                       onPressed: () {
//                         setState(() {
//                           count = 1;
//                           if (starId[0]) {
//                             for (var i = 1; i < starId.length; i++) {
//                               starId[i] = false;
//                             }
//                           } else {
//                             starId[0] = !starId[0];
//                           }
//                         });
//                       },
//                     ),
//                     IconButton(
//                       icon: starId[1]
//                           ? const Icon(Icons.star, color: Colors.orange)
//                           : const Icon(Icons.star_border),
//                       onPressed: () {
//                         setState(() {
//                           count = 2;

//                           if (starId[1]) {
//                             for (var i = 2; i < starId.length; i++) {
//                               starId[i] = false;
//                             }
//                           } else {
//                             for (var i = 0; i < 2; i++) {
//                               starId[i] = true;
//                             }
//                           }
//                         });
//                       },
//                     ),
//                     IconButton(
//                       icon: starId[2]
//                           ? const Icon(Icons.star, color: Colors.orange)
//                           : const Icon(Icons.star_border),
//                       onPressed: () {
//                         setState(() {
//                           count = 3;

//                           if (starId[2]) {
//                             for (var i = 3; i < starId.length; i++) {
//                               starId[i] = false;
//                             }
//                           } else {
//                             for (var i = 0; i < 3; i++) {
//                               starId[i] = true;
//                             }
//                           }
//                         });
//                       },
//                     ),
//                     IconButton(
//                       icon: starId[3]
//                           ? const Icon(Icons.star, color: Colors.orange)
//                           : const Icon(Icons.star_border),
//                       onPressed: () {
//                         setState(() {
//                           count = 4;

//                           if (starId[3]) {
//                             for (var i = 4; i < starId.length; i++) {
//                               starId[i] = false;
//                             }
//                           } else {
//                             for (var i = 0; i < 4; i++) {
//                               starId[i] = true;
//                             }
//                           }
//                         });
//                       },
//                     ),
//                     IconButton(
//                       icon: starId[4]
//                           ? const Icon(Icons.star, color: Colors.orange)
//                           : const Icon(Icons.star_border),
//                       onPressed: () {
//                         setState(() {
//                           count = 5;

//                           if (!starId[4]) {
//                             for (var i = 0; i < 5; i++) {
//                               starId[i] = true;
//                             }
//                           }
//                         });
//                       },
//                     ),
//                   ],
//                 ),