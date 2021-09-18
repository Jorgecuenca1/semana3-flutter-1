class Articulo{

  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Articulo({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });


  factory Articulo.fromJson(Map<String, dynamic> json) => Articulo(
      source: Source.fromJson(json["source"]),
      author : json["author"] ?? 'no tiene autor',
      title : json["title"] ?? '',
      description : json["description"] ?? '',
      url : json["url"] ?? '',
      urlToImage : json["urlToImage"] ?? '',
      publishedAt : json["publishedAt"] ?? '',
      content : json["content"] ?? ''
  );

}

class Source {
  String id;
  String name;

  Source({
    this.id,
    this.name
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
      id: json["id"] ?? '',
      name:json["name"] ?? ''
  );
}