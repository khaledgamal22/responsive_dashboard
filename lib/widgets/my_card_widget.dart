import 'package:flutter/material.dart';
import 'package:responsive_dashboard/uitils/app_images.dart';
import 'package:responsive_dashboard/uitils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesMyCard),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name card',
                          style: AppStyle.styleRegular16(context).copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'khaled Gamal',
                          style: AppStyle.styleMedium20(context),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Image.asset(
                      Assets.imagesInmycardrectangle,
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 40,
                ),
              ),
              Text(
                '0918 8124 0042 8129',
                style: AppStyle.styleSemibold24(context).copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                '12/20 - 124',
                style: AppStyle.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
              const Flexible(
                child: SizedBox(
                  height: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
