import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  List<String> images = [
    "https://www.sirhotels.com/media/images/sir-joan-ibiza-room-.2e16d0ba.fill-2040x1005.format-jpeg.jpg",
    "https://www.private-banking-magazin.de/uploads/images/teaser/big/Treppenhaus-der-Extraklasse.webp",
    "https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/304738353.jpg?k=52964bf94868908e8d8800afa06d05ee8daf2218abddb581adc8f305b0b8354e&o=&hp=1"
  ];
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
            title: Text('finder'),  
        ),  
        body: PageView.builder(
            itemCount: 3,
            pageSnapping: true,
            itemBuilder: (context,pagePosition){
            return Container(
              margin: EdgeInsets.all(10),
              child: Image.network(images[pagePosition]));
          }),
        bottomNavigationBar: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () { },
            child: Text('TextButton'),
          ),
      ),  
    );  
  }  
}  

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        const snackBar = SnackBar(content: Text('Tap'));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      // The custom button
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text('My Button'),
      ),
    );
  }
}