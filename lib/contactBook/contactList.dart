import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({Key? key}) : super(key: key);

  @override
  State<ContactListPage> createState() => _ContactListState();
}

class _ContactListState extends State<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: const Text("ContactList"),
      ),
      body: ListView(
        children: [
          cardWidget("Anju", "994756237"),
          cardWidget("Ajith", "99474638"),
          cardWidget("Achu", "994789634"),
          cardWidget("Binu", "994236587"),
          cardWidget("Beena", "99447856"),
        ],
      ),
    );
  }
}

Widget cardWidget(String name, String number) {
  return Card(
    shadowColor: Colors.black,
    child: ListTile(
      title: Text(name),
      subtitle: Text(number),
      leading: Container(
        height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[400],
          ),
          child: const Icon(Icons.person)),
      trailing: Wrap(
        children: const [
          Icon(Icons.message, color: Colors.grey),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.phone,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}
