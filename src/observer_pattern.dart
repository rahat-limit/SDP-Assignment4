// Define the Observer interface
abstract class Observer {
  void update(String news);
}

// Define a concrete Observer
class NewsSubscriber implements Observer {
  final String name;

  NewsSubscriber(this.name);

  @override
  void update(String news) {
    print('$name received news: $news');
  }
}

// Define the Observable (subject)
class NewsPublisher {
  final List<Observer> _subscribers = [];

  void subscribe(Observer observer) {
    _subscribers.add(observer);
  }

  void unsubscribe(Observer observer) {
    _subscribers.remove(observer);
  }

  void publishNews(String news) {
    print('Publishing news: $news');
    for (final subscriber in _subscribers) {
      subscriber.update(news);
    }
  }
}
