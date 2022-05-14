import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_your_car/styles/color_manger.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(right: 10),
                hintText: 'أبحث في الوصفات',
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/sliders-v.svg',
                      height: 24.h,
                      fit: BoxFit.cover,
                      width: 24.w,
                    )),
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
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15.sp,
                            ),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://yummy.awicdn.com/site-images/sites/default/files/prod/recipe/0/c/473729/3b0452c4c08b44e4128310cbb4369171d74ce99f-080522091034.jpg?preset=v4.0_770X577&save-png=1&rnd=1519151RND220215',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 100.w,
                          height: 150.h,
                          margin: EdgeInsets.only(bottom: 10.h),
                        ),
                        flex: 2,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'طريقة عمل تشيز كيك الزبادي',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'هذا النص هو مثال يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.',
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              width: 60.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: Color(0xffF7BFB0),
                                borderRadius: BorderRadius.circular(8.sp),
                              ),
                              child: Center(
                                child: Text(
                                  'إعلان',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: ColorManger.defaultColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            Row(
                              children: [
                                Text('80'),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text('دقيقة'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
