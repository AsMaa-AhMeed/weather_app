class WeatherModel {
  String date;
  String weatherStateName;
  double minTemp;
  double maxTemp;
  double temp;
  String icon;

  WeatherModel({
    required this.icon,
    required this.date,
    required this.weatherStateName,
    required this.minTemp,
    required this.maxTemp,
    required this.temp,
  });

  factory WeatherModel.fromJson(dynamic data) {
    var jsonDate = data["forecast"]["forecastday"][0]["day"];
    return WeatherModel(
      date: data["location"]["localtime"],
      weatherStateName: jsonDate["condition"]["text"],
      minTemp: jsonDate["mintemp_c"],
      maxTemp: jsonDate["maxtemp_c"],
      temp: jsonDate["avgtemp_c"],
      icon: jsonDate["condition"]["icon"],
    );
  }
}
