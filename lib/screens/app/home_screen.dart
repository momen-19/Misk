import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_your_car/styles/color_manger.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentInd = 0;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 10.h,
        ),
        children: [
          SizedBox(height: 10.h),
          TextField(
            keyboardType: TextInputType.text,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(right: 10),
              hintText: 'أبحث في الوصفات',
              suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.search,color: ColorManger.defaultColor), ),
              hintStyle: TextStyle(
                color: ColorManger.liColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: ColorManger.liColor,
                ),
                borderRadius: BorderRadius.circular(
                  15.sp,
                ),
              ),
              constraints: const BoxConstraints(
                minHeight: 50,
                maxHeight: 60,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: ColorManger.lColor,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Text(
            'وصفات مميزة',
            style: TextStyle(
              color: ColorManger.defaultColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                onPageChanged: (index, v) {
                  setState(() {
                    _currentInd = index;
                  });
                }),
            items: [
              'https://yummy.awicdn.com/site-images/sites/default/files/prod/recipe/0/c/473729/3b0452c4c08b44e4128310cbb4369171d74ce99f-080522091034.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215',
              'https://yummy.awicdn.com/site-images/sites/default/files/prod/recipe/0/c/473729/3b0452c4c08b44e4128310cbb4369171d74ce99f-080522091034.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215',
              'https://yummy.awicdn.com/site-images/sites/default/files/prod/recipe/0/c/473729/3b0452c4c08b44e4128310cbb4369171d74ce99f-080522091034.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215',
              'https://yummy.awicdn.com/site-images/sites/default/files/prod/recipe/0/c/473729/3b0452c4c08b44e4128310cbb4369171d74ce99f-080522091034.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215',
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      Card(
                        margin: EdgeInsets.all(8.sp),
                        elevation: 3,
                        color: ColorManger.scaColor,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.sp),
                            image: DecorationImage(
                              image: NetworkImage(i),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.w, bottom: 8.h),
                        child: Align(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.black45,
                                  Colors.black26,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  25.sp,
                                ),
                                bottomRight: Radius.circular(
                                  5.sp,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'حلويات',
                                  style: TextStyle(
                                    color: ColorManger.lColor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'طريقة عمل تشيز كيك الزبادي',
                                  style: TextStyle(
                                    color: ColorManger.lColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 10.w),
                            width: double.infinity.w,
                          ),
                          alignment: Alignment.bottomRight,
                        ),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 15.h),
          Text(
            'وصفات مميزة',
            style: TextStyle(
              color: ColorManger.defaultColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.w,
              crossAxisSpacing: 10.h,
            ),
            itemBuilder: (context, index) => Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15.sp,
                            ),
                            image: const DecorationImage(
                                image: NetworkImage(
                                  'https://yummy.awicdn.com/site-images/sites/default/files/prod/recipe/0/c/473729/3b0452c4c08b44e4128310cbb4369171d74ce99f-080522091034.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215',
                                ),
                                fit: BoxFit.fill)),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 200.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15.sp),
                                bottomLeft: Radius.circular(15.sp)),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.black12,
                                Colors.black26,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'حلويات',
                              style: TextStyle(
                                color: ColorManger.lColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
