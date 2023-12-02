import 'package:flutter/material.dart';
import 'package:todoapp/screen/homeScreen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  TextEditingController categoryNameController = TextEditingController();
  TextEditingController categoryDisciptionController = TextEditingController();

  

  _showFromDialogh(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("cancel")),
              TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CategoriesScreen())),
                  child: const Text("save")),
            ],
            title: const Text('categories form '),
            content:  SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: categoryNameController,
                    decoration:const InputDecoration(
                        hintText: 'write a category', labelText: 'category'),
                  ),
                  TextField(
                    controller: categoryDisciptionController,
                    decoration:const InputDecoration(
                        hintText: 'write a description',
                        labelText: 'description'),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: ElevatedButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeScreen())),
            child: const Icon(Icons.arrow_back),
          ),
          title: const Text('Categories')),
      body: Center(child: Text("wellcome to categori screen")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFromDialogh(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
