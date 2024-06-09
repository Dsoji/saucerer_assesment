import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:opensaucerer_assessment/core/const/app_assets.dart';
import 'package:opensaucerer_assessment/core/const/app_colors.dart';
import 'package:opensaucerer_assessment/core/widgets/reusable_buttons.dart';
import 'package:opensaucerer_assessment/features/course_details_screen.dart';

class ScheduleCard extends StatelessWidget {
  final String title;
  final String time;

  const ScheduleCard({
    super.key,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CourseDetailsScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        height: 56,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(251, 251, 251, 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Center(
                child: Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
            const Gap(8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.fontColor,
                  ),
                ),
                const Gap(6),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.fontColor,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.more_horiz, color: AppColors.fontColor),
          ],
        ),
      ),
    );
  }
}

enum MediaType { icon, button, text }

class CourseCard extends StatelessWidget {
  final MediaType mediaType;
  final String title;
  final bool isPlaying;
  final dynamic mediaData;
  const CourseCard({
    super.key,
    this.title = "Introduction to IELTS",
    this.isPlaying = true,
    required this.mediaType,
    this.mediaData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Container(
            height: 28,
            width: 32,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(203, 203, 203, 1),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Center(
              child: isPlaying
                  ? const Icon(
                      Icons.play_arrow,
                      color: Color.fromRGBO(148, 148, 148, 1),
                      size: 12,
                    )
                  : Image.asset(
                      AppAssets.pdf,
                      height: 12,
                      width: 12,
                    ),
            ),
          ),
          const Gap(8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(203, 203, 203, 1),
            ),
          ),
          const Spacer(),
          _buildMedia(mediaType, mediaData),
        ],
      ),
    );
  }

  Widget _buildMedia(MediaType mediaType, dynamic mediaData) {
    switch (mediaType) {
      case MediaType.icon:
        return const Icon(
          Icons.download_outlined,
          color: Color.fromRGBO(148, 148, 148, 1),
          size: 14,
        );
      case MediaType.button:
        return FullButton(
          text: 'Start',
          width: 41,
          height: 26,
          onPressed: () {},
          color: const Color.fromRGBO(255, 255, 255, 0.2),
          bgColor: const Color.fromRGBO(197, 179, 230, 1),
          fontSize: 11,
        );
      case MediaType.text:
        return const Text(
          '2:45',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(203, 203, 203, 1),
          ),
        );
      default:
        return const Text(
          '2:45',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(203, 203, 203, 1),
          ),
        );
    }
  }
}
