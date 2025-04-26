# FlutterSandboxProjects
A curated collection of mini Flutter projects and experiments built during my journey learning Flutter and Dart. Each project explores different features, integrations, and best practices.

## Table of Contents
-   [Included Projects](#included-projects)
-   [Highlights](#highlights)
-   [Prerequisites](#prerequisites)
-   [Get Started](#get-started)

## Included Projects
### 🤖 Chatbot App (Dialogflow) 
A simple chatbot application demonstrating: 
- Real-time, conversational UI built in Flutter 
- Integration with Dialogflow for natural language understanding 
- Customizable bot responses 
- **Project Folder:** [chat_bot_app](chat_bot_app/) 
- **Screenshots:** [screenshot1](screenshots/chat_bot_app1.png) & [screenshot2](screenshots/chat_bot_app2.png)

### 🌤 Minimal Weather App
A sleek, cross-platform Flutter application demonstrating:  
- Real-time weather data fetched from the OpenWeatherMap API using your API key  
- Automatic location permission handling to show current-location forecasts   
- Dynamic Lottie animations that change based on conditions (sunny, rainy, cloudy, thunder)  
- **Project Folder:** [minimal_weather_app](minimal_weather_app/) 
- **Screenshots:** [screenshot1](screenshots/minimal_weather_app.png)

## Highlights 
- Modular, easy-to-navigate folder structure 
- Focus on learning key Flutter concepts: state management, UI design, API integration, and more
- Ready-to-run examples—clone, `pub get`, and `flutter run` 

## Prerequisites 
**Before you begin, ensure you have the following installed:**
- [Flutter SDK](https://flutter.dev/docs/get-started/install) 
- [Dart SDK](https://dart.dev/get-dart) 
- An IDE such as VS Code or Android Studio 

**For the Chatbot App only:**
- A Dialogflow account with an enabled agent 
- A service-account key in JSON file from Google Cloud
- Create an `assets` folder in [chat_bot_app](chat_bot_app/) 
- Add the JSON File in `chat_bot_app/assets` folder, name the JSON file as follows `dialog_flow_auth.json`

**For Minimal Weather App only:**
- Obtain an Api Key from [Open Weather Map](https://openweathermap.org/)
- Paste the Api Key into the [Weather Page](minimal_weather_app/lib/pages/weather_page.dart) where there is written "YOUR API KEY"

## Get Started 
1. **Clone this repository** 
```bash
git clone https://github.com/suprezg/FlutterSandBoxProjects.git
cd FlutterSandboxProjects
```
2. **Choose a project**
```bash
cd projectname/
```
3. **Install dependencies**
```bash
flutter pub get
```
4. **Run the app**
```bash
flutter run
```
