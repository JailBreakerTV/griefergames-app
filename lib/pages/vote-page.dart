import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VotePage extends StatefulWidget {
  @override
  _VotePageState createState() => _VotePageState();
}

class _VotePageState extends State<VotePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Hier muss ein Name hin';
                }
                return null;
              },
              decoration: InputDecoration(
                focusColor: Colors.white,
                fillColor: Colors.white,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                errorStyle: TextStyle(
                  fontFamily: 'Assistant',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(251, 43, 43, 1),
                  fontSize: 25,
                ),
                counterStyle: TextStyle(
                  fontFamily: 'Assistant',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
                labelText: "Minecraft-Name".toUpperCase(),
                labelStyle: TextStyle(
                  fontFamily: 'Assistant',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              maxLength: 16,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Assistant',
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                color: Color.fromRGBO(251, 43, 43, 1),
                onPressed: () {
                  if (this._formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Versende Informationen'),
                      ),
                    );
                  }
                },
                child: Text(
                  'Für den Server abstimmen'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Assistant',
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
