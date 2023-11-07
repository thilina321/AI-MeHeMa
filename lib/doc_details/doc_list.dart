import 'package:flutter/material.dart';
import 'package:projectmehema/doc_details/doc_details.dart';

class DocList extends StatefulWidget {
  const DocList({super.key});

  @override
  State<DocList> createState() => _DocListState();
}

class _DocListState extends State<DocList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Doctors")),
      body:ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: const Color.fromARGB(255, 36, 178, 230),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration:const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 40,
                children: [
                  docItem(Image.asset(""),"Dr. Nimal Perera","MBBS, MD, PhD","Colombo","Consultant Physician", () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DocDetails()));
                  }),
                  docItem(Image.asset("") ,"Dr. Hasitha Perera","MBBS, MD, PhD","Colombo","Consultant Physician", () {}),
                  docItem(Image.asset("") ,"Dr. Madhushan Pilapitiya","MBBS, MD, PhD","Colombo","Consultant Physician", () {}),
                  docItem(Image.asset("") ,"Dr. Janitha Rajakaruna","MBBS, MD, PhD","Colombo","Consultant Physician", () {}),
                  docItem(Image.asset("") ,"Dr. Isuranga Jayasinghe","MBBS, MD, PhD","Colombo","Consultant Physician", () {}),
                  docItem(Image.asset("") ,"Dr. Charitha Jayathilaka","MBBS, MD, PhD","Colombo","Consultant Physician", () {}),
                ],
              )
          )
      )],
      ) ,
    );
  }
  docItem(Image image, String name, String title, String address, String proffesion, VoidCallback onPressed) => Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: image,
        ),
        const SizedBox(height: 8),
        // ignore: unnecessary_null_comparison
        onPressed == null ? const SizedBox() : TextButton(
          onPressed: onPressed,
          child: Text(name.toUpperCase(), style: Theme.of(context).textTheme.titleMedium),
        ),
      ],
    ),
    
  );
}