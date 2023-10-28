import 'src/factory_pattern.dart';
import 'src/observer_pattern.dart';

void main() {
  // Observer Pattern
  final newsPublisher = NewsPublisher();
  final subscriber1 = NewsSubscriber('Subscriber 1');
  final subscriber2 = NewsSubscriber('Subscriber 2');

  newsPublisher.subscribe(subscriber1);
  newsPublisher.subscribe(subscriber2);

  newsPublisher.publishNews('Breaking News: Dart is Awesome!');
  newsPublisher.unsubscribe(subscriber1);

  newsPublisher.publishNews('Another news: Flutter is Amazing!');

  // Factory Pattern
  final factory = ArticleFactory();
  final sportsArticle = factory.createArticle('sports');
  final techArticle = factory.createArticle('technology');

  sportsArticle.display();
  techArticle.display();
}
