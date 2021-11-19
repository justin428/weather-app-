//Global Varaiables
String URLCurrentAlberta;
String URLForecastAlberta;
String URLCurrentEdmonton;
String URLForecastEdmonton;
String URLCurrentCalgary;
String URLForecastCalgary;
String URLCurrentRedDeer;
String URLForecastRedDeer; 
JSONObject jsonCurrentAlberta;
JSONObject jsonForecastAlberta;
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentCalgary;
JSONObject jsonForecastCalgary;
JSONObject jsonCurrentRedDeer;
JSONObject jsonForecastRedDeer;

void BuildingURL() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_ForeCast = "http://api.openweathermap.org/data/2.5/forecast?";
  String albertaId = "id=5883102";
  String edmontonId = "id=5946768";
  String calgaryId = "id=5913490";
  String redDeerId = "id=6118158";
  //
  String apiKey = "APPID="; //Your Key goes here
  String mode = "mode=json";
  String unitMode = "units=metric";
  String and = "&";
  //
  URLCurrentAlberta = baseURL_Current+albertaId+and+apiKey+and+mode+and+unitMode;
  URLForecastAlberta = baseURL_ForeCast+albertaId+and+apiKey+and+mode+and+unitMode;
  URLCurrentEdmonton = baseURL_Current+edmontonId+and+apiKey+and+mode+and+unitMode;
  URLForecastEdmonton = baseURL_ForeCast+edmontonId+and+apiKey+and+mode+and+unitMode;
  URLCurrentCalgary = baseURL_Current+calgaryId+and+apiKey+and+mode+and+unitMode;
  URLForecastCalgary = baseURL_ForeCast+calgaryId+and+apiKey+and+mode+and+unitMode;
  URLCurrentRedDeer = baseURL_Current+redDeerId+and+apiKey+and+mode+and+unitMode;
  URLForecastRedDeer = baseURL_ForeCast+redDeerId+and+apiKey+and+mode+and+unitMode;
  println("1. URL for Current Alberta Call:", URLCurrentAlberta); //Debugged URL, this will work
}//End BuildingURL
//
void APICall() {
  jsonCurrentAlberta = loadJSONObject (URLCurrentAlberta);
  jsonForecastAlberta = loadJSONObject(URLForecastAlberta);
  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
  jsonCurrentCalgary = loadJSONObject(URLCurrentCalgary);
  jsonForecastCalgary = loadJSONObject(URLForecastCalgary);
  jsonCurrentRedDeer = loadJSONObject(URLCurrentRedDeer);
  jsonForecastRedDeer = loadJSONObject(URLForecastRedDeer);
}//End APICall()
