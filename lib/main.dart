import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ToDo()));

class ToDo extends StatelessWidget {
  @override

  final List<String> products = [
    "Tomate", "Käse", "Lauch", "whatever", "yolo"
  ];

  Widget build(BuildContext context) {

    void inform() {
      showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("jo"),
          );
        }
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do-App'),
        backgroundColor: Color.fromRGBO(35, 152, 185, 100),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) {
          return ToDoItem(products[i]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: inform,
        child: Icon(Icons.add_circle_outline),
    ),
    );
  }
}

class ToDoItem extends StatelessWidget {
  final String products; // String als Attribut erstellen, damit ToDos austauschbar
  const ToDoItem(this.products); // Konstruktor mit Argument

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 22
      ),

      child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
          leading: Checkbox(value: false),

          title: Text(products,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.black54
            ),
          ),
          trailing: Icon(Icons.delete_outline)
      ),
    );
  }
}
