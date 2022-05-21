import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_your_car/screens/test.dart';
import 'package:rent_your_car/styles/color_manger.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _res = [
    'حلويات',
    'مقبلات',
    'معجنات وبيتزا',
    'مشاوي ولحوم',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: ListView(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'وصفات مميزة',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_forward),
                        Text('عرض الكل'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 220.h,
              child: ListView.builder(
                itemCount: _res.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 200.h,
                    width: 250.w,
                    child: Container(
                      margin: EdgeInsets.only(left: 10.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: [
                          Image.network(
                            'https://yummy.awicdn.com/site-images/sites/default/files/prod/recipe/0/c/473729/3b0452c4c08b44e4128310cbb4369171d74ce99f-080522091034.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215',
                            fit: BoxFit.cover,
                            height: 200.h,
                            width: 270.w,
                          ),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            width: 272.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.sp),
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.black12,
                                  Colors.black54,
                                ],
                                begin: AlignmentDirectional.topCenter,
                                end: AlignmentDirectional.bottomCenter,
                              ),
                            ),
                          ),
                          Container(
                            height: 35.h,
                            width: 35.w,
                            decoration: const BoxDecoration(
                              color: Colors.black45,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: ColorManger.lColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.w,
                              vertical: 30.h,
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                _res[index],
                                style: TextStyle(
                                  color: ColorManger.lColor,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              itemCount: _res.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _res[index].toString(),
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(Icons.arrow_forward),
                                Text('عرض الكل'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      SizedBox(
                        height: 180.h,
                        child: ListView.builder(
                          itemCount: _res.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 170.h,
                              width: 220.w,
                              child: Container(
                                margin: EdgeInsets.only(left: 10.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.sp),
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: Stack(
                                  children: [
                                    Image.network(
                                      'https://yummy.awicdn.com/site-images/sites/default/files/prod/recipe/0/c/473729/3b0452c4c08b44e4128310cbb4369171d74ce99f-080522091034.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215',
                                      fit: BoxFit.cover,
                                      height: 200.h,
                                      width: 270.w,
                                    ),
                                    Container(
                                      clipBehavior: Clip.antiAlias,
                                      width: 272.w,
                                      height: 200.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.sp),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Colors.black12,
                                            Colors.black54,
                                          ],
                                          begin: AlignmentDirectional.topCenter,
                                          end: AlignmentDirectional.bottomCenter,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 35.h,
                                      width: 35.w,
                                      decoration: const BoxDecoration(
                                        color: Colors.black45,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: ColorManger.lColor,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15.w,
                                        vertical: 30.h,
                                      ),
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          _res[index],
                                          style: TextStyle(
                                            color: ColorManger.lColor,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
