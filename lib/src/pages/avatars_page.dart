import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  static final route = '/avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.infobae.com/new-resizer/JX1qrXT_oksIiiBQN_YzYH4ywA0=/768x512/filters:format(jpg):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/GWVSCUSFM5ZV7FSCJUF2UO2LKY.jpg'),
              backgroundColor: Colors.lightBlueAccent,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.lightBlueAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.infobae.com/new-resizer/JX1qrXT_oksIiiBQN_YzYH4ywA0=/768x512/filters:format(jpg):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/GWVSCUSFM5ZV7FSCJUF2UO2LKY.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
