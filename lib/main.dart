import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Colors.blue,
          fontFamily: "Pretendard"
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5, // 그림자
        leadingWidth: 100,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Image.asset(
            'images/main.png',
          ),
        ),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.notifications_none)),
          IconButton(onPressed: null, icon: Icon(Icons.menu))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 여행지 선택 박스
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    ]
                  ),
                  width: 300,
                  height: 210,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 20, 8.0, 0),
                    child: Column(
                      children: [
                        // 어디로 떠나시나요? 박스
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8)
                          ),
                          width: 250,
                          height: 40,
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.search),
                              SizedBox(
                                width: 5,
                              ),
                              Text("어디로 떠나시나요?"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // 인기, AI 추천, 여행톡 묶음
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'images/star.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "인기",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'images/ai.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "AI 추천",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'images/chat.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "지기톡",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // 공지사항
                        Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                          height: 35,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(5)
                              ),
                              width: 30,
                              height: 20,
                              child: const Center(
                                child: Text(
                                  "공지",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.blue
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "로컬 여행 메이트를 고르는 꿀팁!",
                              style: TextStyle(
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ]
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // 지기 랭킹
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  width: 300,
                  height: 500,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/chat');
              break;
            case 2:
              Navigator.pushNamed(context, '/myplan');
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'My Plans')
        ],
      ),
    );
  }
}
