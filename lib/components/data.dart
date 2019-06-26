class IntroItem {
  IntroItem({
    this.title,
    this.category,
    this.imageUrl,
  });

  final String title;
  final String category;
  final String imageUrl;
}

final sampleItems = <IntroItem>[
  new IntroItem(title: 'Wechat the Chinese ‘Super-App’ Changing the Face of Tech!', category: 'Wechat', imageUrl: 'assets/shanghai.jpg',),
  new IntroItem(title: 'Occasionally wearing pants is a good idea.', category: 'Nanjing', imageUrl: 'assets/nanjing.jpg',),
  new IntroItem(title: 'We might have the best team spirit ever.', category: 'Wuhan', imageUrl: 'assets/wuhan.jpg',),
];