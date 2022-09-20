import 'package:flutter/material.dart';
import 'package:flutter_food_recipe/models/recipe.dart';
import 'package:flutter_food_recipe/views/widgets/rating_widget.dart';
import 'package:flutter_food_recipe/views/widgets/text_field_widget.dart';
import 'package:flutter_food_recipe/views/widgets/drop_down_widget.dart';

class EditPage extends StatefulWidget {
  final Recipe recipe;
  const EditPage({Key key, @required this.recipe}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  int rating = 0;
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
                const Text(
                  "Rating of recipe: ",
                ),
                const SizedBox(height: 5),
                RatingWidget((rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }),
                TextFieldWidget(
                  "Name of recipe: ",
                  "Type the name of recipe",
                  TextEditingController()..text = widget.recipe.name,
                  1,
                  55,
                  ((p0) {}),
                ),
                TextFieldWidget(
                  "Description of recipe: ",
                  "Type the description of recipe",
                  TextEditingController()..text = widget.recipe.description,
                  8,
                  200,
                  ((p0) {}),
                ),
                const SizedBox(height: 20),
                const Text("Time to cook: "),
                const SizedBox(height: 5),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(4)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DropDownWidget(10, "Year", (value) {}),
                        const SizedBox(width: 20),
                        DropDownWidget(11, "Month", (value) {}),
                        const SizedBox(width: 20),
                        DropDownWidget(29, "Day", (value) {}),
                        const SizedBox(width: 20),
                        DropDownWidget(59, "Minute", (value) {}),
                        const SizedBox(width: 20),
                        DropDownWidget(59, "Second", (value) {}),
                      ],
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
