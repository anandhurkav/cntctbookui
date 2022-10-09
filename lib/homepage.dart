

import 'package:cntctbookui/userdetails.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<User> user = [
    User(
        name: "Anandhu",
        phoneNumber: "7012470355"),
        
    User(
        name: "Adhi", phoneNumber: "8086735338"),
    User(
        name: "Anu",
        phoneNumber: "9037057644",
        ),
    User(
        name: "Achan", phoneNumber: "9447556680"),
    User(
        name: "Amma",
        phoneNumber: "9633972680"
       ),
    User(name: "Achamma", phoneNumber: "9645686680"),
    User(
        name: "Achachan",
        phoneNumber: "9645686680",
        ),
   
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 44, 98, 247),
          title: Text("Contact Book"),
          centerTitle: true,
          actions: [Icon(Icons.more_vert)],
        ),
        body: ListView(children: <Widget>[
          IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 40, 10, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "SEARCH",
                          hintStyle: TextStyle(fontWeight: FontWeight.normal),
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                  Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.people_alt,
                    size: 43,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 43,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: user.map((user) {
              return UserCard(user: user);
            }).toList(),
          )
        ]));
  }
}

class UserCard extends StatelessWidget {
  final User user;
  UserCard({required this.user});
  @override
  Widget build(BuildContext context) {
    
    return Card(
      color: Color.fromRGBO(196, 196, 196, 1),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => UserDetails(
                        user: user,
                      )));
        },
        leading: CircleAvatar(backgroundImage: NetworkImage('data:image/jpeg;base64,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')),
        title: Text(
          user.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(user.phoneNumber),
        trailing: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
           
            ],
          ),
        ),
      ),
    );
  }
}