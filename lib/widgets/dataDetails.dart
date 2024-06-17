import 'package:flutter/material.dart';

class DataDetails extends StatelessWidget {
  const DataDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()=>print("data details"),
      child: Container(
        height: 50.0,
        margin: const EdgeInsets.only(left: 12.0,right: 12.0,bottom: 8.0,),
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.swap_vertical_circle_sharp,
                color: Colors.white,
                size: 45.0,
              ),
              RichText(
                text: const TextSpan(
                  text: "Data 5 GB\n",
                  children: [
                    TextSpan(
                      text: "validity 10 Days",
                    ),
                  ],
                ),
              ),
              const Text(
                "\$15.00",
              ),
              Transform.rotate(
                angle: 40,
                child:const Icon(
                  Icons.arrow_back_outlined,
                  size: 15.0,color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
