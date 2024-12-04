import 'package:flutter/material.dart';
import 'main.dart';


class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5, // 그림자
        automaticallyImplyLeading: false,
        title: Text(
          "채팅",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600
          ),
        ),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.favorite_border_rounded)),
          IconButton(onPressed: null, icon: Icon(Icons.file_upload_outlined))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // 현재 선택된 탭 인덱스
        selectedItemColor: Colors.black54, // 선택된 아이콘과 텍스트 색상
        unselectedItemColor: Colors.grey, // 선택되지 않은 아이콘과 텍스트 색상
        selectedLabelStyle: const TextStyle(
          fontFamily: "Pretendard", // 지정한 폰트
          fontWeight: FontWeight.w600, // 폰트 두께
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: "Pretendard", // 지정한 폰트
          fontWeight: FontWeight.w400, // 폰트 두께
        ),
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyPage()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Chat()) );
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Chat()));
              break;
            default:
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'My Plans',
          ),
        ],
      ),
    );
  }
}
