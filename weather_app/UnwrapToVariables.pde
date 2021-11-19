void unwrapToVariables() {
  //Note: need to unwrap all JSON Objects, see API Call
  currentAlberta();
  //forecastAlberta();
  //currentEdmonton();
  //forecastEdmonton();
  //currentCalgary();
  //forecastCalgary();
  //currentRedDeer();
  //forecastRedDeer();
}//End unwrapToVariables()
//
void currentAlberta() {
  JSONObject mainWeatherAlberta = jsonCurrentAlberta.getJSONObject("main");
  float temp = mainWeatherAlberta.getFloat("temp");
  println("2. Current Alberta Weather", temp);
  
  JSONArray currentAlbertaWeather = jsonCurrentAlberta.getJSONArray("weather"); //Square Bracket
  JSONObject allAlberta = currentAlbertaWeather.getJSONObject(0);
  int albertaID = allAlberta.getInt("id");
  String albertaMain = allAlberta.getString("main");
  println("3. Verifying Alberta ID and MAin Variables:" , albertaID, albertaMain
}//End currentAlberta()
