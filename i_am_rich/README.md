# i_am_rich

i_am_rich Flutter application.

## Notes

📄main.dart

When the app runs, the starting file is the 'main.dart' and it will look for the main function.

Material App: grand dad of all the widgets, usually at the top.
    '-Center widget: responsible for laying out the screen, puts its content in the center.
        '-Text widget: responsible for displaying text and styling text.
    ~ OR ~
    '-Scaffold widget: white screen
        '_AppBar: pre-build material design, is added to the top.
        '_body: has to have child
            '_Image: ⚠️ there are 2 Image widgets

📄pusbec.yaml

Configuration file, 'YAML Ain't a Markup Language'

📱To set the app icon:
1. Go to https://appicon.co and generate the icon for Iphone and Android.
2. Copy the corresponding folders:
    - For Android replace the folders 'mipmap...' -> <project_name>/android/app/src/main/res
        On Android Studio, you can modifiy the image to make the icon a little more rounded/square, just right click on the 'res' folder and select 'new > image asset', select ypur imagen, resize, after you finish, this will replace your current images. 😉
    - For Iphone replace the folder 'Assets.xcassets' -> <project_name>/ios/Runner/
