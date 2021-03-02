import 'package:flutter/material.dart';
import 'package:names_list/followers_provider.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of followers'),
      ),
      body: Consumer<Followers>(
        builder: (context, followers, child) => followers.followers.length == 0
            ? Center(child: Text('Sorry you followed no one'))
            : ListView.builder(
                itemCount: followers.followers.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      child: Text('You are following:'),
                    );
                  } else {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(followers.followers[index - 1]),
                        ),
                        Divider(),
                      ],
                    );
                  }
                },
              ),
      ),
    );
  }
}
