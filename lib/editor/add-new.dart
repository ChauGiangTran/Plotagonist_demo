import 'package:flutter/material.dart';

class AddNewPage extends StatefulWidget {
  @override
  _AddNewPageState createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  leading: GestureDetector(
                    child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text('Cancel'),
                        )),
                  ),
                  title: Text('Add new'),
                  centerTitle: true,
                  actions: [
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text('Save'),
                        )),
                  ],
                  backgroundColor: Colors.red,
                  elevation: 1,
                ),
                body: Container(
                    color: Colors.pink,
                    child: Column(
                      children: [
                        Container(
                            child: Text(
                                'Add Title to create chapter, use # for automatic numbering')),
                        Container(
                            child: Row(
                          children: [
                            RaisedButton(
                              onPressed: () {},
                              child: const Text('OUTLINE',
                                  style: TextStyle(fontSize: 20)),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              child: const Text('DRAFT',
                                  style: TextStyle(fontSize: 20)),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              child: const Text('EDITED',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        )),
                        Container(
                          // color: Colors.blue,
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: 'description',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Row(
                          children: [
                            RaisedButton(
                              onPressed: () {},
                              child: const Text('DRAFT',
                                  style: TextStyle(fontSize: 20)),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              child: const Text('DRAFT',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        ))
                      ],
                    )))));
  }
}
