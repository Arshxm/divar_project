import 'package:divar_project/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wavy_slider/wavy_slider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController controller = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 100,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                      ),
                      Opacity(
                        opacity: 0.04,
                        child: WavySlider(
                          color: ConstColor.red,
                          strokeWidth: 8,
                          value: 1,
                          waveWidth: 200,
                          waveHeight: 40,
                          width: double.infinity,
                          onChanged: (currentValue) {
                            print(currentValue);
                          },
                        ),
                      ),
                      Opacity(
                        opacity: 0.03,
                        child: WavySlider(
                          color: ConstColor.red,
                          strokeWidth: 6,
                          value: 1,
                          waveWidth: 200,
                          waveHeight: 40,
                          width: double.infinity,
                          onChanged: (currentValue) {
                            print(currentValue);
                          },
                        ),
                      ),
                      Opacity(
                        opacity: 0.02,
                        child: WavySlider(
                          color: ConstColor.red,
                          strokeWidth: 4,
                          value: 1,
                          waveWidth: 200,
                          waveHeight: 40,
                          width: double.infinity,
                          onChanged: (currentValue) {
                            print(currentValue);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/first_page_image.png'),
              ],
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "اینجا محل",
                  style: TextStyle(
                    fontFamily: 'SB',
                    fontSize: 16,
                    color: ConstColor.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 65,
                    height: 26,
                    decoration: BoxDecoration(
                        color: ConstColor.grey,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4, left: 8),
                          child: Image.asset("assets/images/frame5.png"),
                        ),
                        Text(
                          "آویز",
                          style: TextStyle(
                            fontFamily: 'SB',
                            fontSize: 16,
                            color: ConstColor.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "آگهی شماست",
                  style: TextStyle(
                    fontFamily: 'SB',
                    fontSize: 16,
                    color: ConstColor.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                width: 305,
                height: 63,
                child: Text(
                  "در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'SB', fontSize: 14, color: Color(0xff98A2B3)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 96,
          ),
          SmoothPageIndicator(
            effect: const ExpandingDotsEffect(
              expansionFactor: 3,
              dotHeight: 6,
              dotWidth: 6,
              dotColor: ConstColor.grey,
              activeDotColor: ConstColor.red,
            ),
            controller: controller,
            count: 3,
          ),
          SizedBox(
            height: 32,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "ثبت نام",
                      style: TextStyle(color: Colors.white, fontFamily: 'SM'),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        minimumSize: Size(159, 40),
                        backgroundColor: ConstColor.red),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "ورود",
                      style: TextStyle(color: ConstColor.red, fontFamily: "SM"),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      minimumSize: Size(159, 40),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
