import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return ScreenUtilInit(
        designSize: const Size(428, 926), // Figma page size
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MediaQuery(
            data: data.copyWith(textScaler: TextScaler.noScaling),
            child: MaterialApp(
              title: 'Animation inquiry',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const MyHomePage(),
            ),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0XFF48FF86),
              Color(0XFFD8052B),
            ],
          )),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/bg_stars.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: MediaQuery.sizeOf(context).height / 2.7,
                child: Image.asset(
                  'assets/bg_stripes.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 60.h,
                left: 0,
                right: 0,
                child: Text(
                  'MERRY CHRISTMAS TO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 31.sp,
                    fontFamily: 'Rye',
                    color: const Color(0XFFBD0D2C),
                    shadows: <Shadow>[
                      Shadow(
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                        color: Colors.black.withOpacity(.2),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100.h,
                left: 0,
                right: 0,
                child: Text(
                  'NAME',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 41.sp,
                    fontFamily: 'Rosarivo',
                    color: Colors.white,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(3, 3),
                        blurRadius: 8,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 160.h,
                left: 0,
                right: 0,
                child: SizedBox(
                    height: 24.h,
                    width: 396.w,
                    child: Image.asset(
                      'assets/i_am_happy_text.png',
                      fit: BoxFit.contain,
                    )),
              ),
              Positioned(
                top: 140.h,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                        height: 217.h,
                        width: 229.w,
                        child: Image.asset(
                          'assets/santa_gift.gif',
                          fit: BoxFit.contain,
                        )),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      height: 200.h,
                      width: 380.w,
                      padding: EdgeInsets.only(top: 12.h, bottom: 24.h),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/text_bg.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Your christmas gift is waiting',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontFamily: 'TimesNewRoman',
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: const Color(0XFF3D877C),
                                ),
                              ),
                              Text(
                                'December sale is happening...',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    fontFamily: 'TimesNewRoman',
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: const Color(0XFF3D877C),
                                    height: 0.8),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'PUT IN YOUR',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontFamily: 'Jacquard24',
                                  color: const Color(0XFFBC1E2D),
                                ),
                              ),
                              Text(
                                'DISCOUNT CODE!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontFamily: 'IrishGrover',
                                    color: const Color(0XFFBC1E2D),
                                    height: 0.8),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'You Will Love All The Surprises',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontFamily: 'TimesNewRoman',
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0XFF3E4E78),
                                ),
                              ),
                              Text(
                                'AND GIFTS FOR YOU!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    fontFamily: 'TimesNewRoman',
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0XFF3E4E78),
                                    height: 0.8),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'JUST TYPE IN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: 'Ribeye',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'ALL YOUR WISHES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: 'Ribeye',
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'FOR CHRISTMAS!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 31.sp, fontFamily: 'Ribeye', color: Colors.white, height: 0.8),
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                    Container(
                      height: 45.23.h,
                      width: 333.7.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage('assets/go_btn.png'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(4, 4), // Shadow position
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
