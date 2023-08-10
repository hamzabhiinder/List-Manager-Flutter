import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:list_manager/model/list_model.dart';

import 'db_helper/db_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _addListItem() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        TextEditingController titleController = TextEditingController();

        void addItem() {
          if (titleController.text.isNotEmpty) {
            _dbHelper!
                .insertTable(
              ItemsModel(
                title: titleController.text,
              ),
            )
                .then((value) {
              log("Item added successfully");
              setState(() {
                itemsList = _dbHelper!.getItemsList();
                titleController.text = '';
              });
              Navigator.of(context).pop();
            }).onError((error, stackTrace) {
              print("Error: ${error.toString()}");
            });
          } else {
            Fluttertoast.showToast(
              msg: "Item Name Cannot Be Empty!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red[600],
              textColor: Colors.white,
              fontSize: 16.0,
            );
          }
        }

        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: "Add Item",
                  labelText: "Item",
                ),
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: addItem,
                    child: const Text("Add Item"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  DBHelper? _dbHelper;
  late Future<List<ItemsModel>> itemsList;

  loadData() async {
    itemsList = _dbHelper!.getItemsList();
  }

  @override
  void initState() {
    _dbHelper = DBHelper();
    super.initState();
    loadData();
  }

  TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: itemsList,
              builder: (context, AsyncSnapshot<List<ItemsModel>> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return snapshot.data!.isEmpty
                    ? const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "No items yet.\nAdd items using the button below.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Dismissible(
                            direction: DismissDirection.endToStart,
                            key: ValueKey<int>(snapshot.data![index].id!),
                            background: Container(
                              alignment: Alignment.centerRight,
                              color: Colors.red,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child:
                                  const Icon(Icons.delete, color: Colors.black),
                            ),
                            onDismissed: (direction) {
                              setState(() {
                                _dbHelper!
                                    .deleteTable(snapshot.data![index].id!);
                                itemsList = _dbHelper!.getItemsList();
                                snapshot.data!.remove(snapshot.data![index]);
                              });
                            },
                            child: Card(
                              child: ListTile(
                                onTap: () {
                                  title.text = snapshot.data![index].title;

                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        padding: const EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Column(
                                          children: [
                                            TextField(
                                              controller: title,
                                              decoration: const InputDecoration(
                                                  hintText: "Update"),
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  if (title.text.isNotEmpty) {
                                                    _dbHelper!
                                                        .updateTable(ItemsModel(
                                                      id: snapshot
                                                          .data![index].id!,
                                                      title:
                                                          title.text.toString(),
                                                    ));

                                                    setState(() {
                                                      itemsList = _dbHelper!
                                                          .getItemsList();
                                                    });

                                                    Navigator.of(context).pop();
                                                  } else {
                                                    Fluttertoast.showToast(
                                                      msg:
                                                          "Item Name Cannot Be Empty!",
                                                      toastLength:
                                                          Toast.LENGTH_SHORT,
                                                      gravity:
                                                          ToastGravity.BOTTOM,
                                                      timeInSecForIosWeb: 1,
                                                      backgroundColor:
                                                          Colors.red[600],
                                                      textColor: Colors.white,
                                                      fontSize: 16.0,
                                                    );
                                                  }
                                                },
                                                child: const Text("Update"))
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                  BottomSheet(
                                    onClosing: () {},
                                    builder: (context) {
                                      return Container();
                                    },
                                  );
                                },
                                title: Text(
                                  snapshot.data![index].title.toString(),
                                  style: const TextStyle(fontSize: 20),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                              ),
                            ),
                          );
                        },
                      );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addListItem,
        tooltip: 'Add a list item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
