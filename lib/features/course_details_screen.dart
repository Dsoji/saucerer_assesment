import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:opensaucerer_assessment/core/const/app_assets.dart';
import 'package:opensaucerer_assessment/core/const/app_colors.dart';
import 'package:opensaucerer_assessment/core/widgets/reusable_buttons.dart';
import 'package:opensaucerer_assessment/core/widgets/schedule_card.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Course Detail',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 24,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 188,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(AppAssets.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(12),
            const SizedBox(height: 19),
            const Gap(32),
            textTitle('IELTS'),
            const Gap(8),
            const Text(
              'Lorem ipsum dolor sit amet consectetur. Nisi cursus lacus ultrices tempus pulvinar donec pellentesque. Aenean amet a aliquam nibh aliquet. Dapibus tempor semper suspendisse et sed justo mauris sed ullamcorper. Et a id nisi duis felis in ut suspendisse molestie.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.fontColor,
              ),
            ),
            const Gap(24),
            useProfile(),
            const Gap(24),
            courseContent(),
            const Gap(24),
            balanceSheet(),
            const Gap(24),
            FullButton(
              text: "Enroll Course",
              width: double.infinity,
              height: 44,
              onPressed: () {},
              color: Colors.white,
              bgColor: AppColors.primaryColor,
            ),
            const Gap(60),
          ],
        ),
      ),
    );
  }

  Widget balanceSheet() {
    return Container(
      decoration: ShapeDecoration(
        color: const Color.fromRGBO(248, 248, 248, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Price',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(148, 148, 148, 1),
                ),
              ),
              FullButton(
                text: '#4,000',
                width: 58,
                height: 31,
                onPressed: () {},
                color: Colors.white,
                bgColor: AppColors.primaryColor,
                fontSize: 16,
              ),
            ],
          ),
          const Gap(12),
          _balanceTile('Modulus', '12'),
          const Gap(12),
          _balanceTile('Language', 'English'),
          const Gap(12),
          _balanceTile('Certification', 'Completion Certificate'),
        ],
      ),
    );
  }

  Widget _balanceTile(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(148, 148, 148, 1),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }

  Widget courseContent() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: const Color.fromRGBO(233, 233, 233, 1),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 31,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: const Row(
              children: [
                Text(
                  "Course Content",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColors.fontColor,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.schedule,
                  size: 16,
                  color: AppColors.primaryColor,
                ),
                Gap(8),
                Text(
                  "10 videos",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromRGBO(233, 233, 233, 1),
            thickness: 1,
          ),
          const CourseCard(
            mediaType: MediaType.text,
          ),
          const CourseCard(
            mediaType: MediaType.text,
          ),
          const CourseCard(
            mediaType: MediaType.text,
          ),
          const CourseCard(
            mediaType: MediaType.text,
          ),
          const CourseCard(
            isPlaying: false,
            title: 'Pdf - Course  Topic',
            mediaType: MediaType.icon,
          ),
          const CourseCard(
            title: 'QUIZ',
            mediaType: MediaType.button,
          ),
        ],
      ),
    );
  }

  Widget useProfile() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AppAssets.pfp),
          ),
          Gap(8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jorah Den",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Gap(2),
              Text(
                "Tutor",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(203, 203, 203, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget textTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: AppColors.primaryColor),
    );
  }
}
