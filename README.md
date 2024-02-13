# News App
This is a simple flutter app that uses **APIs** to get news for different categories using **Dio** Package and then display a web view using the url link of the corresponding article

## Screenshots

### Home page:
This page uses custom scroll view to enable scrolling the whole screen including the categories listview

<img src="https://github.com/mernaislam/News-App/assets/101946404/eff89330-5c27-4668-8bdb-5de7cd90ea7b" alt="news app home screen" width="200"/>

### "Technology" Category page:
This page modify the endpoint parameters to have a category = "technology" 

<img src="https://github.com/mernaislam/News-App/assets/101946404/787c0b78-ebdd-48ad-9eee-4e9d49c919d3" alt="news app home screen" width="200"/>

### Example of a Web View page:

<img src="https://github.com/mernaislam/News-App/assets/101946404/0fc35b5f-1cc4-4dcf-876b-0fcf4b67e822" alt="news app home screen" width="200"/>

## Environment Variables

To run this project, make sure you have the following environment variables in your **pubspec.yaml** file in the latest version available

    dependencies: 
        dio: ^5.4.0
        webview_flutter: ^4.5.0

    assets:
      - assets/


### API Used:

https://newsapi.org 
