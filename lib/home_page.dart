
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opti_text/ocr/image_picker_class.dart';
import 'package:image_picker/image_picker.dart';
import 'package:opti_text/ocr/image_cropper_page.dart';
import 'package:opti_text/ocr/recognization_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        shape: const RoundedRectangleBorder(
           borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
           ),
        ),
        title: const Center(
            child: Text('OptiText',
            style: TextStyle(
              fontSize: 25,
              fontWeight:FontWeight.bold,
            ),)
        ),
      ),
      body:  Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
            color: Colors.blue.shade900,
          ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text('Choose an Option Below :',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 100,
                      width: 200,
                      child: FloatingActionButton.extended(
                        foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          onPressed:(){
                            pickImage(source: ImageSource.camera).then((value) {
                              if (value != '') {
                                imageCropperView(value, context).then((value) {
                                  if (value != '') {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (_) => RecognizePage(
                                          path: value,
                                        ),
                                      ),
                                    );
                                  }
                                });
                              }
                            });
                          }, label: const Text('Take a pic',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                             ),
                        icon: const Icon(Icons.camera_alt),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 100,
                      width: 200,
                      child: FloatingActionButton.extended(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        onPressed:(
                            ){
                          pickImage(source: ImageSource.gallery).then((value) {
                            if (value != '') {
                              imageCropperView(value, context).then((value) {
                                if (value != '') {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (_) => RecognizePage(
                                        path: value,
                                      ),
                                    ),
                                  );
                                }
                              });
                            }
                          });
                        }, label: const Text('Select from\n Gallery',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                        icon: const Icon(Icons.image),
                      ),
                    ),
                  ],
            )
        ),


    );
  }
}
