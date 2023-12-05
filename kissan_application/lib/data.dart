import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final List<String> formValues;

  const NextPage({required this.formValues});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Information'),
      ),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/WhatsApp Image 2023-11-27 at 4.31.24 PM.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "GO Back",
                  style: TextStyle(
                    color: Color.fromARGB(255, 17, 17, 17),
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                )),

            // ),
            // ),
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     for (String value in formValues)
            //       Text(value),
            //   ],
            // ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.6,
              // constraints: BoxConstraints(maxWidth: 400),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 233, 218).withOpacity(.5),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(20),
              //child: Text("jjjj"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (String value in formValues)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(value),
                    ),
                ],
              ),

              //  MyForm(),
            ),
          ),
        ],
      ),
    );
  }
}
