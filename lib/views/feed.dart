import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/utils/constants/app_constants.dart';

class MyFeedScreen extends StatefulWidget {
  const MyFeedScreen({super.key});

  @override
  State<MyFeedScreen> createState() => _MyFeedScreenState();
}

class _MyFeedScreenState extends State<MyFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            title: Row(
              children: [
                SvgPicture.asset(
                  instagramLogo,
                  height: 30.h,
                  width: 104.w,
                ),
                SizedBox(
                  width: 8.w,
                ),
                const Icon(Icons.keyboard_arrow_down)
              ],
            ),
            actions: [
              SvgPicture.asset(
                notificationsHeartIcon,
                width: 24.w,
                height: 24.w,
              ),
              SizedBox(
                width: 24.w,
              ),
              SvgPicture.asset(
                messengerIcon,
                width: 24.w,
                height: 24.w,
              ),
              SizedBox(
                width: 13.w,
              ),
            ],
          ),
          SizedBox(
            height: 120.h,
            width: double.infinity,
            child: ListView.separated(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const StoryWidget(
                    isUserStory: true,
                    image: userDummyImage,
                    name: 'Ruffles',
                  );
                } else {
                  return const StoryWidget(
                    image: userDummyImage,
                    name: 'Michelle',
                  );
                }
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 20.w,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey.shade200,
          ),
          const Post(),
          const Post(),
          const Post(),
          const Post(),
        ],
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.0.w, vertical: 7.h),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16.r,
                backgroundImage: const AssetImage(userDummyImage),
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ruffles',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Sponsored',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.more_horiz)
            ],
          ),
        ),
        Image.asset(
          'lib/utils/resources/pngs/post1.png',
          width: double.infinity,
          fit: BoxFit.cover,
          height: 390.h,
        ),
        Container(
          height: 44.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          child: Row(children: [
            SvgPicture.asset(
              'lib/utils/resources/svgs/liked.svg',
              width: 24.r,
              height: 24.r,
            ),
            SizedBox(
              width: 12.w,
            ),
            SvgPicture.asset(
              'lib/utils/resources/svgs/comment.svg',
              width: 24.r,
              height: 24.r,
            ),
            SizedBox(
              width: 12.w,
            ),
            SvgPicture.asset(
              'lib/utils/resources/svgs/share.svg',
              width: 24.r,
              height: 24.r,
            ),
            const Spacer(),
            SvgPicture.asset(
              'lib/utils/resources/svgs/save.svg',
              width: 24.r,
              height: 24.r,
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '100 Likes',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Username Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more ',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'View all 16 comments',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6E6E6E)),
              ),
              Row(
                children: [
                  Text(
                    '1 hour ago',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF6E6E6E)),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    Icons.circle,
                    size: 3.r,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'See Translation',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
      ],
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
    this.isUserStory = false,
    required this.name,
    required this.image,
  });

  final bool isUserStory;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 8.h,
          ),
          Stack(
            children: [
              isUserStory
                  ? Padding(
                      padding: EdgeInsets.only(left: 15.0.w),
                      child: CircleAvatar(
                        radius: 37.r,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 33.r,
                          backgroundImage: AssetImage(image),
                        ),
                      ),
                    )
                  : CircleAvatar(
                      radius: 40.r,
                      backgroundImage: const AssetImage(
                          'lib/utils/resources/pngs/gradient.png'),
                      child: CircleAvatar(
                        radius: 37.r,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 33.r,
                          backgroundImage: AssetImage(image),
                        ),
                      ),
                    ),
              if (isUserStory)
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.add,
                        size: 20.sp,
                        color: Colors.white,
                      ),
                    ))
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
              height: 25.h,
              child: Text(
                name,
                style: TextStyle(
                    color: isUserStory ? Colors.grey.shade700 : Colors.black),
              ))
        ],
      ),
    );
  }
}
