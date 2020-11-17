import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'model.dart';
class CustomCard extends StatefulWidget {
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  var data=Data('lib/images/Milky Bread Large.png','Bread');
  @override
  Widget build(BuildContext context) {
    var refHeight=MediaQuery.of(context).size.height;
    var refWidth=MediaQuery.of(context).size.width;
    return Container(
      height: refHeight*0.25,
      width: refWidth*0.40,
      margin: EdgeInsets.only(top: 100,left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: refHeight*0.20,
            width: refWidth*0.40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('${data.image}'),
               // fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(20)
            ),
            ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 5.00,left: 10),
            child:  Text(
              '${data.title} ',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 22.00,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              )

          )

        ],
      ),
    );
  }
}
