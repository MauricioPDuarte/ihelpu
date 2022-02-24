import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_fonts.dart';
import '../../../core/theme/app_images.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                color: AppColors.primary,
                height: 130,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 56,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        AppImages.logoWhiteSvg,
                        height: 33,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: const Icon(
                              Icons.notifications_active_outlined,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: const Icon(
                              Icons.exit_to_app_outlined,
                              color: AppColors.primary,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Meus tickets",
                          style: AppFonts.title,
                        ),
                        Text(
                          "Total 4 tickets",
                          style: AppFonts.subtitleLight,
                        )
                      ],
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(children: const [
                        Card(
                          elevation: 1,
                        ),
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            left: 30,
            right: 30,
            height: 70,
            top: 108,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("4", style: AppFonts.title),
                      Text(
                        "aberto",
                        style: AppFonts.subtitleRegular,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("10", style: AppFonts.title),
                      Text("resolvido", style: AppFonts.subtitleRegular)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("5", style: AppFonts.title),
                      Text("cancelado", style: AppFonts.subtitleRegular)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("2", style: AppFonts.title),
                      Text("andamento", style: AppFonts.subtitleRegular)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
