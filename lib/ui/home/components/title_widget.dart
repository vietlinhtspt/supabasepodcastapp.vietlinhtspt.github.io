import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 35,
      child: Stack(children: [
        Image.asset('assets/icons/home/ic_customed_line.png'),
        Positioned(
          top: 7,
          left: 0,
          right: 0,
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
              const Spacer(),
              Text(
                'xem thêm',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(
                  'assets/icons/home/ic_explain.svg',
                  height: 16,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}