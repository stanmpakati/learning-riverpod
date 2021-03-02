import 'package:flutter/material.dart';
import 'package:names_list/followers_provider.dart';
import 'package:names_list/view_followers.dart';
import 'package:provider/provider.dart';

class AddNames extends StatefulWidget {
  @override
  _AddNamesState createState() => _AddNamesState();
}

class _AddNamesState extends State<AddNames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add names to follow'),
      ),
      body: Consumer<Followers>(
        builder: (context, Followers followers, child) {
          return ListView(
            children: [
              namesWidget(followers, 'Stan Mpakati'),
              namesWidget(followers, 'Meher Shalal-Hash-Baz'),
              namesWidget(followers, 'Ganizani Mpakati'),
              namesWidget(followers, 'Paul Michaels'),
              namesWidget(followers, 'Daniel Domborembwa'),
              namesWidget(followers, 'Zerubabel Mpakati'),
              namesWidget(followers, 'Kuda Saramukati'),
              namesWidget(followers, 'Takunda Makuseni'),
              namesWidget(followers, 'Grace Gumbuzo'),
              namesWidget(followers, 'Nyasha Tichaireva'),
              namesWidget(followers, 'Shingirirai Pano'),
              namesWidget(followers, 'Pindukai Kure'),
              namesWidget(followers, 'Zidema Gonzo'),
              namesWidget(followers, 'Papiko Goredema'),
              namesWidget(followers, 'Ishamel Pakanaka'),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Profile(),
            ),
          );
        },
      ),
    );
  }

  Widget namesWidget(Followers followers, String name) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: Colors.blue),
      title: Text(name),
      trailing: GestureDetector(
        onTap: () {
          followers.followers.contains(name)
              ? followers.remove(name)
              : followers.add(name);
        },
        child: followers.followers.contains(name)
            ? Icon(Icons.remove)
            : Icon(Icons.add),
      ),
    );
  }
}
