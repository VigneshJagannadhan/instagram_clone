import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/constants/app_constants.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: SizedBox(
          height: 40.h,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              prefixIcon: SvgPicture.asset(exporeIcon),
              prefixIconConstraints: BoxConstraints(
                maxHeight: 15.h,
                maxWidth: 40.w,
                minWidth: 40.w,
              ),
              label: const Text('Search'),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: 15, // Specify the number of items in the grid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Specify the number of columns in the grid
          mainAxisSpacing:
              1.w, // Specify the spacing between each item along the main axis
          crossAxisSpacing:
              1.w, // Specify the spacing between each item along the cross axis
          childAspectRatio: 1, // Specify the aspect ratio of each item
        ),
        itemBuilder: (BuildContext context, int index) {
          // Return the desired widget for each item in the grid
          return Image.asset(
            'lib/utils/resources/pngs/explore/${index + 1}.png',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
