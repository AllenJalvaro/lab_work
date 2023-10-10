import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<String> todoItems = [];
  void addItem() {
    todoItems.add(item.text);
    setState(() {});
  }

  var item = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: item,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('TO DO item'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton.icon(
                      onPressed: addItem,
                      icon: Icon(Icons.add),
                      label: Text('ADD'),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: todoItems.length,
                  itemBuilder: (_, index) =>
                      TodoItem(index + 1, todoItems[index]),
                ),

                // ListView(
                //   shrinkWrap: true,
                //   children: todoItems.map((item) => TodoItem(item)).toList(),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  TodoItem(this.index, this.item, {super.key});
  int index;
  String item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(item),
        leading: CircleAvatar(
          child: Text('$index'),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete_forever,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
