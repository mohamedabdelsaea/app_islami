class OnboardingModels {
  String imagePath;
  String title;
  String? desc;

  OnboardingModels({
    required this.imagePath,
    required this.title,
    this.desc,
  });

  static List<OnboardingModels> onboardingList = [
    OnboardingModels(
      imagePath: 'assets/images/intro_1 (2).png',
      title: 'Welcome To Islmi App',
    ),
    OnboardingModels(
      imagePath: 'assets/images/intro_2.png',
      title: 'Welcome To Islami',
      desc: 'We Are Very Excited To Have You In Our Community',
    ),
    OnboardingModels(
      imagePath: 'assets/images/intro_3.png',
      title: 'Reading the Quran',
      desc: 'Read, and your Lord is the Most Generous',
    ),
    OnboardingModels(
      imagePath: 'assets/images/intro_4.png',
      title: 'Bearish',
      desc: 'Praise the name of your Lord, the Most High',
    ),
    OnboardingModels(
      imagePath: 'assets/images/intro_5.png',
      title: 'Holy Quran Radio',
      desc:
          'You can listen to the Holy Quran Radio through the application for free and easily',
    ),
  ];
}
