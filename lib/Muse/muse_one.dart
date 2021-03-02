import 'package:flutter/material.dart';
import '../utils/theme.dart' as Theme;

final messageTheirStyle = TextStyle(
  color: Colors.black,
  fontSize: 15.0,
  fontFamily: 'SFProText',
);
final messageYourStyle = TextStyle(
  color: Colors.white,
  fontSize: 15.0,
  fontFamily: 'SFProText',
);
final focusedBorderContact = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.0),
  borderSide: BorderSide(color: Theme.Colors.blue),
);
final anableBorderContact = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.0),
  // borderSide: BorderSide(color: Color(0xFFC8C8CC)),
  borderSide: BorderSide(color: Colors.white),

);
class MuseOnePage extends StatefulWidget {
  @override 
  _MuseOnePage createState() => _MuseOnePage();
}
class _MuseOnePage extends State<MuseOnePage> {
  bool isTextFiledFocus = false;
  
  _buildMessageComposer() {
    return Column(
      children: [
        
        Container(
          constraints: BoxConstraints(
            maxHeight: 150.0,
          ),
          color: Theme.Colors.grey100,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 13),

          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.0, color: const Color(0xFFFFFFFF)),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Focus(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15,0,15,12),
                        child: TextFormField(
                          maxLines: null,
                          decoration: InputDecoration.collapsed(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Messages',
                            hintStyle: TextStyle(fontSize: 15, fontFamily: 'SFProText', color: Color.fromARGB(60, 60, 67, 30)),
                          ),
                          style: messageTheirStyle,
                        ),
                    ),
                    onFocusChange: (hasFocus) {
                      setState(() {
                        isTextFiledFocus = hasFocus;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.5),
                  child: InkWell(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('assets/images/dictation.png'),
                      fit: BoxFit.contain,
                      height: 30.0)),
                )
              ])),
        )
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> sendImg = [
      'assets/images/send1.png',
      'assets/images/send2.png',
      'assets/images/send3.png',
      'assets/images/send4.png',
   ];
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {},
              child: Padding(
                child: Text('Back',style: TextStyle(fontSize: 17, color: Color(0xFF007aff)) ),
                padding: EdgeInsets.only(left: 10, top: 18, bottom: 18),
                  
              )
            ),
            title: Text('Your Muse', style: TextStyle(fontSize: 17, color: Colors.black, fontFamily: 'SFProText', fontWeight: FontWeight.w600)),
            centerTitle: true,
            backgroundColor: Color(0xFFf2f2f2),
            elevation: 1,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: [
                Flexible(
                  child: Stack(
                    children: [
                      ListView(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 6, top: 10),
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage('assets/images/avt2.png'),
                                  )
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: MediaQuery.of(context).size.width * 0.75
                                  ),
                                  margin: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 7.0),
                                  padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFE9E9EB),
                                  ),
                                  child: Container(
                                    child: Text(
                                      'Hi Jackie, You can ask me anytime to help you. I’m always learning new things, just type help for a list of things I can do.',
                                      style: messageTheirStyle,                
                                    )
                                  )
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                      maxWidth: MediaQuery.of(context).size.width * 0.75),
                                  child: Container(
                                    margin:  EdgeInsets.only(top: 8.0, bottom: 8.0, right: 7.0),
                                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF25A2F0),
                                    ),
                                    child: Container(
                                      child: Text(
                                        'Show me photos of Ben Affleck',
                                        style: messageYourStyle,                
                                      )
                                    )
                                  ),),
                                Container(
                                  padding: EdgeInsets.only(right: 6, top: 10),
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage('assets/images/avt1.png'),
                                  )
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 6, top: 10),
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage('assets/images/avt2.png'),
                                  )
                                ),
                                
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: MediaQuery.of(context).size.width * 0.75),
                                  margin: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 7.0),
                                  // color: Color(0xFFE9E9EB),
                                  // width: 320,
                                  child: Wrap(
                                    // direction: Axis.vertical,
                                    children: [
                                      for (var i in sendImg)
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 2.5, vertical: 2.5),
                                        width: (MediaQuery.of(context).size.width * 0.75)/2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Image(
                                          image: AssetImage(i),
                                          fit: BoxFit.contain
                                        )
                                      )
                                    ]
                                  )
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 8,
                        child: Container(
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.only(left: 8),
                                decoration: BoxDecoration(
                                  color: Theme.Colors.orange,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Text('Show me more', style: TextStyle(fontSize: 16, fontFamily: 'Lato', color: Colors.white))
                              ),
                            ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                 _buildMessageComposer(),
              ]
            ),
          ),
        ),
      ),
    );
  }
}