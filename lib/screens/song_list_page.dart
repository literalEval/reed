import 'package:flutter/material.dart';
import 'package:reed/constants/colors.dart';
import 'package:reed/models/song.dart';
import 'package:reed/screens/song_info_page.dart';
import 'package:reed/utils/size_config.dart';
import 'package:reed/widgets/song_tile.dart';

class SongListPage extends StatefulWidget {
  const SongListPage({Key? key}) : super(key: key);

  @override
  _SongListPageState createState() => _SongListPageState();
}

class _SongListPageState extends State<SongListPage> {
  final List<Song> songList = [
    Song(
        name: 'Sia',
        album: 'This Is acting',
        artists: ['Sia'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi bo',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi boi',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi bois',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi boiss',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi b',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi man',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi mans',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi mao',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi lao',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi tao',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi pao',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
    Song(
        name: 'Hey boi ravidi ching',
        album: 'henlo bois',
        artists: ['ravidi, shaikh'],
        path: 'assets/music/file.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: songList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SongInfoPage(
                      songData: songList[index],
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  SongTile(
                    songName: songList[index].name,
                    artists: songList[index].artists,
                    imagePath: 'assets/images/dummy_image.jpeg',
                    isLiked: false,
                  ),
                  Divider(
                    color: kInactiveIconColor,
                    indent: SizeConfig.widthPercent * 5,
                    endIndent: SizeConfig.widthPercent * 5,
                    height: SizeConfig.heightPercent * 2,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
