import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/cors/Routing/routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    /* with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }
*/

    controller.forward();
    Future.delayed(const Duration(seconds: 4), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fadeIn, duration: Duration(seconds: 2));

      // context.go('/homeView');
      GoRouter.of(context).push(Routes.homeScreen);
    });
  }

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: animation,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: 500,
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),

                  // SvgPicture.asset(
                  //   'assets/svgs/Group.svg',
                  //   fit: BoxFit.cover,
                  //   width: 400.w,
                  // ),
                ),
                Text(
                  "AnimeCorn",
                  style: TextStyle(
                      color: Color.fromARGB(255, 110, 110, 110),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
              // Adjust the height as needed
            ),
          ),
        ],
      ),
    );
  }
}

void navigateToHome() {}
