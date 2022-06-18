class Quote {
  String? year;
  String? s_date;
  String? l_date;
  String? text;
  String? image_url;

  Quote({
    this.year,
    this.s_date,
    this.l_date,
    this.text,
    this.image_url,
  });

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        year: (json['year'] as String),
        s_date: (json['s_date'] as String),
        l_date: (json['l_date'] as String),
        text: json['text'] as String,
        image_url: json['image_url'] as String,
      );
  //[{"year":"1971","s_date":"d345 56 ","l_date":"6 gjgh gh",
// "text":"tfrhyth tr gyhshjcb seihfid hyfido",
// "image_url":"http:\/\/dynamichubscom.ipage.com\/wid_bongobondhu\/photo\/photo4.png"}]
}

class QuoteList {
  final List<Quote> quotes;

  QuoteList({required this.quotes});

  factory QuoteList.fromJson(List<dynamic> parsedJson) {
    List<Quote> quotes = [];
    //quotes = parsedJson.map<QuoteList>((e) => Quote.fromJson(e)).toList();
    quotes = parsedJson.map<Quote>((e) => Quote.fromJson(e)).toList();
    print("model class: ${quotes.first.year.toString()}");
    return QuoteList(quotes: quotes);
  }
  //parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}
