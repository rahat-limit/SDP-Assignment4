// Define an abstract Article class
abstract class Article {
  void display();
}

// Concrete implementations of Article
class SportsArticle implements Article {
  @override
  void display() {
    print('This is a sports article.');
  }
}

class TechnologyArticle implements Article {
  @override
  void display() {
    print('This is a technology article.');
  }
}

// Article Factory
class ArticleFactory {
  Article createArticle(String type) {
    switch (type) {
      case 'sports':
        return SportsArticle();
      case 'technology':
        return TechnologyArticle();
      default:
        throw Exception('Invalid article type');
    }
  }
}
