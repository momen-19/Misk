import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_your_car/styles/color_manger.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final List<String> _list = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdo0WCJdX4UTQXgjn-vR063mZuPu3s7gBNug&usqp=CAU',
    'https://e7.pngegg.com/pngimages/709/628/png-clipart-turkish-cuisine-vegetarian-cuisine-food-spicy-rabbit-food-animals-thumbnail.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdo0WCJdX4UTQXgjn-vR063mZuPu3s7gBNug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdo0WCJdX4UTQXgjn-vR063mZuPu3s7gBNug&usqp=CAU',
  ];
  List<String> components = [
    '   كوب ونصف من البسكويت السادة المطحون ',
    '    كوب ونصف من البسكويت السادة المطحون',
    '    كوب ونصف من البسكويت السادة المطحون',
    '    كوب ونصف من البسكويت السادة المطحون',
    '    كوب ونصف من البسكويت السادة المطحون',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'طريقة عمل تشيز كيك الزبادي',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        children: [
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 300.h,
                    child: PageView.builder(
                      onPageChanged: (v) {
                        setState(
                          () {
                            index = v;
                          },
                        );
                      },
                      itemCount: _list.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity.w,
                                  height: 280.h,
                                  decoration: BoxDecoration(
                                    color: ColorManger.defaultColor,
                                    borderRadius:
                                        BorderRadius.circular(15.sp),
                                  ),
                                  child: Image.network(
                                    _list[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Ind(index: index, selected: index == 0),
                      Ind(index: index, selected: index == 1),
                      Ind(index: index, selected: index == 2),
                      Ind(index: index, selected: index == 3),
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 100.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.remove_red_eye_outlined,
                            size: 14.sp, color: ColorManger.lColor),
                        Text(
                          '236 مشاهدة',
                          style: TextStyle(
                              color: ColorManger.lColor, fontSize: 12.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'طريقة عمل تشيز كيك الزبادي',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 80.w,
                height: 35.h,
                decoration: BoxDecoration(
                  color: ColorManger.defaultColor,
                  borderRadius: BorderRadius.circular(8.sp),
                ),
                child: Center(
                  child: Text(
                    '80 دقيقة',
                    style: TextStyle(
                      color: ColorManger.lColor,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          const Text(
            'هذا النص هو مثال يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف.',
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'المكونات',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: components.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  components[index],
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'طريقة التحضير',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: components.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  '*${components[index]}',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: ColorManger.scaColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.sp),
              topLeft: Radius.circular(10.sp),
            ),
            border: Border.all(color: Colors.grey.shade200, width: 2.w)),
        width: double.infinity.w,
        height: 100.h,
        child: Padding(
          padding: EdgeInsets.all(20.0.sp),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity.w, 30.h),
                maximumSize: Size(double.infinity.w, 40.h),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.sp))),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.whatsapp),
                SizedBox(
                  width: 5.w,
                ),
                Text('مشاركة عبر الواتساب'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Ind extends StatelessWidget {
  Ind({
    Key? key,
    required this.index,
    required this.selected,
  }) : super(key: key);

  int index;
  bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.w),
      height: 8.h,
      width: selected ? 20.w : 8.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
        color: selected ? ColorManger.defaultColor : ColorManger.liColor,
      ),
    );
  }
}
