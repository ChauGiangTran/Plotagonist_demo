import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hashtagable/hashtagable.dart';
import '../utils/theme.dart' as Theme;
import 'test.dart';

class AddNewPage extends StatefulWidget {
  @override
  _AddNewPageState createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  String text = '@Robin goes to the #cliffs';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        color: Colors.white,
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            leading: Container(
              width: 100,
              child: Padding(
                padding: EdgeInsets.only(left: 5, top: 20, bottom: 20),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel',
                        style: TextStyle(
                          color: Theme.Colors.blue,
                          fontSize: 15,
                          fontFamily: 'SFProText',
                        ))),
              ),
            ),
            title: Text('Add new',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w600)),
            centerTitle: true,
            actions: [
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20, right: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text('Save',
                        style: TextStyle(
                          color: Theme.Colors.blue,
                          fontSize: 15,
                          fontFamily: 'SFProText',
                        )),
                  )),
            ],
            backgroundColor: Colors.white,
            elevation: 1,
          ),
          body: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                'Add Title to create chapter, use # for automatic numbering',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Theme.Colors.grey,
                                    fontSize: 13,
                                    fontFamily: 'Lato'))),
                      ),
                      Container(
                          height: 42,
                          color: Theme.Colors.grey100,
                          padding: new EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Row(
                                children: [
                                  Container(
                                    margin: new EdgeInsets.only(right: 7),
                                    child: SizedBox(
                                      width: 94,
                                      height: 25,
                                      child: RaisedButton(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          color: Colors.white,
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                child: CircleAvatar(
                                                  radius: (10.5),
                                                  child: Image.asset(
                                                      "assets/images/avt1.png",
                                                      width: 21,
                                                      height: 21),
                                                ),
                                              ),
                                              Text('OUTLINE',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Lato',
                                                      color:
                                                          Theme.Colors.orange)),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Container(
                                    margin: new EdgeInsets.only(right: 7),
                                    child: SizedBox(
                                      height: 25,
                                      width: 69,
                                      child: RaisedButton(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        color: Colors.white,
                                        onPressed: () {},
                                        child: Text('DRAFT',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Lato',
                                                color: Theme.Colors.grey200)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: new EdgeInsets.only(right: 7),
                                      child: SizedBox(
                                        height: 25,
                                        width: 69,
                                        child: RaisedButton(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          color: Colors.white,
                                          onPressed: () {},
                                          child: Text('EDITED',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Lato',
                                                  color: Theme.Colors.grey200)),
                                        ),
                                      ))
                                ],
                              )),
                              Container(
                                  child: SizedBox(
                                width: 25,
                                height: 25,
                                child: RaisedButton(
                                  elevation: 0,
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  onPressed: () => {},
                                  color: Theme.Colors.orange100,
                                  child: Icon(
                                    Icons.add_sharp,
                                    color: Theme.Colors.white100,
                                    size: 17,
                                  ),
                                ),
                              ))
                            ],
                          )),
                      Container(
                        height: height / 2 - 180,
                        margin: new EdgeInsets.only(left: 15, right: 15),
                        child:
                            // TextFormField(
                            //     controller: MyTextController(),
                            //     keyboardType: TextInputType.multiline,
                            //     maxLines: null,
                            //     style: TextStyle(
                            //       fontSize: 15,
                            //       color: Theme.Colors.orange,
                            //       fontFamily: 'Lato',
                            //     ),
                            //     decoration: new InputDecoration(
                            //       border: InputBorder.none,
                            //     )),
                            HashTagTextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                decoratedStyle: TextStyle(
                                  fontSize: 15,
                                  color: Theme.Colors.orange,
                                  fontFamily: 'Lato',
                                ),
                                basicStyle: TextStyle(
                                  fontSize: 15,
                                  color: Theme.Colors.grey200,
                                  fontFamily: 'Lato',
                                ),
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                )),
                      ),
                    ],
                  )),
                  // Container(
                  //     child: Row(
                  //   children: [
                  //     RaisedButton(
                  //       onPressed: () {},
                  //       child: const Text('DRAFT',
                  //           style: TextStyle(fontSize: 20)),
                  //     ),
                  //     RaisedButton(
                  //       onPressed: () {},
                  //       child: const Text('DRAFT',
                  //           style: TextStyle(fontSize: 20)),
                  //     ),
                  //   ],
                  // )),
                  Container(
                      child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 36,
                          height: 36,
                          child: RaisedButton(
                            elevation: 0,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            color: Colors.white,
                            child: RotationTransition(
                              turns: new AlwaysStoppedAnimation(30 / 360),
                              child: Icon(
                                Icons.attach_file,
                                color: Colors.black,
                                size: 32,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        color: Theme.Colors.grey100,
                        padding: new EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: RaisedButton(
                                elevation: 0,
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                onPressed: () => {},
                                color: Theme.Colors.orange100,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Theme.Colors.white100,
                                  size: 23,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: RaisedButton(
                                elevation: 0,
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                onPressed: () => {},
                                color: Theme.Colors.orange,
                                child: Icon(
                                  Icons.add_sharp,
                                  color: Colors.white,
                                  size: 23,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: RaisedButton(
                                elevation: 0,
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                onPressed: () => {},
                                color: Theme.Colors.orange100,
                                child: Icon(
                                  Icons.arrow_forward_sharp,
                                  color: Theme.Colors.white100,
                                  size: 23,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              )),
        )));
  }
}

showAlertDialog(BuildContext context) {
  // set up the list options
  Widget optionOne = SimpleDialogOption(
    child: Text('Camera',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'SFProText',
            fontWeight: FontWeight.w600,
            color: Theme.Colors.blue,
            fontSize: 17)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget optionTwo = SimpleDialogOption(
    child: const Text('Media Library',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'SFProText', color: Theme.Colors.blue, fontSize: 17)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget optionThree = SimpleDialogOption(
    child: const Text('Files',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'SFProText', color: Theme.Colors.blue, fontSize: 17)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget optionFour = SimpleDialogOption(
    child: const Text('Unsplash Photos',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'SFProText', color: Theme.Colors.blue, fontSize: 17)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget optionFive = SimpleDialogOption(
    child: const Text('Cancel',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'SFProText', color: Theme.Colors.blue, fontSize: 17)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the SimpleDialog
  SimpleDialog dialog = SimpleDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0))),
    children: <Widget>[
      Container(
          width: 270,
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            children: [
              Column(
                children: [
                  Text('Add attachment',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16)),
                  SizedBox(height: 10),
                  Text(
                      'Please select the location of the media you want to attach',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SFProText',
                          color: Colors.black,
                          fontSize: 12)),
                  SizedBox(height: 20),
                  optionOne,
                  optionTwo,
                  optionThree,
                  optionFour,
                  optionFive,
                ],
              ),
            ],
          ))
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return dialog;
    },
  );
}
