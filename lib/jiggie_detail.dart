import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'main.dart';
import 'chat.dart';

class JiggieDetail extends StatelessWidget {
  const JiggieDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5, // 그림자
        leading: const IconButton(onPressed: null, icon: Icon(Icons.arrow_back_ios)),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.favorite_border_rounded)),
          IconButton(onPressed: null, icon: Icon(Icons.file_upload_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*지기 기본 프로필*/
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 사진, 리뷰들
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('images/dohyeon.jpg'),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Text(
                            "5.0",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            )
                          ),
                          Text(
                            "리뷰 평점",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            "2.5K",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            )
                          ),
                          Text(
                            "리뷰수",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            "10K",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            )
                          ),
                          Text(
                            "여행수",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // 이름
                  Text(
                    "박도현",
                    style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  // 신상정보
                  Text(
                    "전라북도 전주시 / 남성 / 26",
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // 자기소개
                  Text(
                    "hi im dohyeon. im JBNU student"
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 6,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*여행지기 추천 코스 상단*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "여행지기 추천 코스",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      DropdownButton(
                        dropdownColor: Colors.white,
                        items: const [
                          DropdownMenuItem(
                              value: '인기순',
                              child: Text('인기순')
                          ),
                          DropdownMenuItem(
                              value: '추천순',
                              child: Text('추천순')
                          ),
                          DropdownMenuItem(
                              value: '최신순',
                              child: Text('최신순')
                          ),
                        ],
                        hint: const Text(
                          "인기순",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        onChanged: (String? value) {
        
                        },)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  /*첫 번째 여행 코스*/
                  ImageCarousel(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "인생샷 건지는 전주 여행",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "전라북도 전주시 / 2박 3일",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400]
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  /*두 번째 여행 코스*/
                  ImageCarousel(),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "인생샷 건지는 전주 여행",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "전라북도 전주시 / 2박 3일",
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // 현재 선택된 탭 인덱스
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

// 캐러셀
class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;

  // 슬라이드 이미지 리스트
  final List<String> _images = [
    'images/hanok.jpg',
    'images/jeondong.jpg',
    'images/moonhwae.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CarouselSlider.builder(
            carouselController: _controller,
            itemCount: _images.length,
            itemBuilder: (context, index, realIndex) {
              return Image.asset(
                _images[index],
                fit: BoxFit.cover,
                width: double.infinity,
              );
            },
            options: CarouselOptions(
              height: 300, // 슬라이드 높이
              viewportFraction: 1, // 전체 너비 차지
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        // SmoothPageIndicator
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: _images.length,
              effect: const WormEffect(
                dotWidth: 10,
                dotHeight: 10,
                activeDotColor: Colors.blue,
                dotColor: Colors.grey,
              ),
              onDotClicked: (index) {
                _controller.jumpToPage(index);
              },
            ),
          ),
        ),
      ],
    );
  }
}
