import 'package:flutter/material.dart';
import 'package:kos_app/utils/botton_navbar.dart';
import 'package:kos_app/utils/constants.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        backgroundColor: buttonTheme,
        title: const Center(child:Text('Home')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PostWidget(imgLink: 'assets/abc.jpg',),
            PostWidget(imgLink: 'assets/def.jpg',),
            PostWidget(imgLink: 'assets/ghi.jpg',),
            PostWidget(imgLink: 'assets/xyz.jpg',),
          ],
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String imgLink;
  const PostWidget({
    super.key, required this.imgLink,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imgLink),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_up_alt_rounded,size: 40,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.messenger,size: 40,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.ios_share_rounded,size: 40,))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
