import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Konfirmasi extends StatefulWidget {
  const Konfirmasi({Key? key, required this.barcode});
  final String barcode;

  @override
  State<Konfirmasi> createState() => _KonfirmasiState();
}

class _KonfirmasiState extends State<Konfirmasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.barcode),
          ElevatedButton(onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Container(color: Colors.purple,width: 500,);
            });
          }
            , child: Text("Konfirmasi"))
        ],
      ),
    ),);
  }
}
