import 'package:flutter/material.dart';
import 'package:flutter_food_recipe/models/recipe.dart';
import 'package:flutter_food_recipe/views/widgets/edit_form_widget.dart';
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
          onPressed: () {
            FocusScope.of(context).unfocus();
            Future.delayed(const Duration(milliseconds: 200),
                () => Navigator.of(context).pop());
          },
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
                FormEdit(
                  controller: TextEditingController()
                    ..text = widget.recipe.name,
                  label: "Recipe Name:",
                  hintText: "Type the name of recipe",
                  maxLines: 1,
                  heightSizedBox: 50,
                ),
                FormEdit(
                  controller: TextEditingController()
                    ..text = widget.recipe.description,
                  label: "Recipe Description:",
                  hintText: "Type the description of recipe",
                  maxLines: 8,
                  heightSizedBox: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
