class URL {
 

  static String baseUrl = "http://10.0.2.2:8000";
  static String category = baseUrl + '/api/category';
  static String news = baseUrl + '/api/news';
  static String settings = baseUrl + '/api/settings';
  static String login = baseUrl + '/api/auth/login';
  static String changePass = baseUrl + '/api/change_password';

  static String addQuery(String url, Map<String, String> query) {
    url = url + '?';
    query.forEach((String key, String value) {
      url = url + '$key=$value&';
    });
    return url;
  }

  static String imageUrl(String imgUrl) {
    if (imgUrl == null || imgUrl.isEmpty) {
      return 'https://';
    }
    return 'http://10.0.2.2/storage/' + imgUrl;
  }
}
