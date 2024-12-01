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
        actions: const [
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
                  width: 400,
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
                          width: 290,
                          height: 40,
                          child: const Row(
                            children: [
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
                          indent: 28,
                          endIndent: 28,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 28,
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
                              width: 10,
                            ),
                            const Text(
                              "로컬 여행 메이트를 고르는 꿀팁!",
                              style: TextStyle(
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(
                              width: 39,
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
                  width: 400,
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 40, 30, 0),
                    child: Column(
                      children: [
                        // 제목
                        const Row(
                          children: [
                            Center(
                              child: Text(
                                "지기 랭킹",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Center(
                              child: Text(
                                "더보기",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.blue
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        MateList(),
                        // 1위 랭킹 박스
                      ],
                    ),
                  ),
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

class MateList extends StatelessWidget {
  MateList({super.key});

  final List<Map<String, dynamic>> mates = [
    {
      "rank": 1,
      "name": "박도현",
      "hashtag": "#낭만 #술",
      "image": 'images/dohyeon.jpg',
      "rating": "10만, 5.0점",
    },
    {
      "rank": 2,
      "name": "박태정",
      "hashtag": "#식도락",
      "image": 'images/taejeong.png',
      "rating": "5만, 4.8점",
    },
    {
      "rank": 3,
      "name": "김강우",
      "hashtag": "#모험 #자유",
      "image": 'images/dohyeon.png',
      "rating": "3만, 4.5점",
    },
    {
      "rank": 4,
      "name": "오승주",
      "hashtag": "#독립 #희생",
      "image": 'images/dohyeon.png',
      "rating": "2만, 2.7점",
    },
    {
      "rank": 5,
      "name": "문지기",
      "hashtag": "#전략 #리더",
      "image": 'images/dohyeon.png',
      "rating": "1만, 4.9점",
    },
    {
      "rank": 6,
      "name": "현직이",
      "hashtag": "#전략 #리더",
      "image": 'images/dohyeon.png',
      "rating": "1만, 4.9점",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder( // 랭킹 프로필
        shrinkWrap: true,
        itemCount: mates.length,
        itemBuilder: (context, index) {
          var mate = mates[index];
          // 점수 부분에서 실수 값 추출
          double score = double.parse(mate['rating'].split(',')[1].replaceAll('점', '').trim());
          int starCount = score ~/ 1; // 점수에 맞는 별의 개수 (소수점 버림)
          bool hasHalfStar = (score % 1 >= 0.5); // 0.5 이상이면 반별 추가

          // 별 개수를 동적으로 설정
          List<Widget> stars = [];
          // full별
          stars.addAll(List.generate(starCount, (index) => Icon(Icons.star, size: 20, color: Colors.amber)));
          // harf별
          if (hasHalfStar) {
            stars.add(Icon(Icons.star_half, size: 20, color: Colors.amber));
          }
          // 빈 별 (5개가 되도록 나머지 별을 채운다)
          int remainingStars = 5 - stars.length;
          stars.addAll(List.generate(remainingStars, (index) => Icon(Icons.star_border, size: 20, color: Colors.amber)));

          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Text(
                  "${mate['rank']}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(mate['image']),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mate['name'],
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        mate['hashtag'],
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Row(
                        children: stars,
                      ),
                    ),
                    Text(
                      mate['rating'],
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      );
  }
}

