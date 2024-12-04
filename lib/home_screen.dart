import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facebook'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const <Widget>[
          PostWidget(),
          PostWidget(),
          PostWidget(),
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/profile.jpg'), // User's profile image
            ),
            title: Text('User Name'),
            subtitle: Text('This is a post'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('This is where the post content will go.'),
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
