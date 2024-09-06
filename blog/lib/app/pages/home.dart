import 'package:flutter/material.dart';
import '../model/server.dart';

class Home extends StatefulWidget {
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  late Future<List<dynamic>> _ListPost;

  void initState() {
    super.initState();
    _ListPost = PostService().fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _ListPost,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Erro ao carregar dados: ${snapshot.error}'),
            );
          }

          var data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var post = data[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('User ID: ${post['userId'].toString()}'),
                      Text('ID: ${post['id'].toString()}'),
                      Text('Title: ${post['title']}',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text('Body: ${post['body']}'),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
