class Photo
{
  late String title, url;

  Photo({
    required this.title,
    required this.url,
  });

  factory Photo.fromMap(Map m1) {
    return Photo(title: m1['title'], url: m1['url'],);
  }
}