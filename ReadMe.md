
## WhatsApp Stickers 

WhatsApp Stickers for cordova/phonegap/ionic.

## Contents

1. [Description](#description)
2. [Features](#features)
3. [Demo](#quick-demo)
4. [Quick Start](#quick-start)
5. [Installation](#installation)
6. [Usage](#usage)
7. [API](#api)
8. [Wiki and Docs](#wiki-and-docs)
9. [Screenshots](#screenshots)
10. [License](#license)
11. [Credits](#credits)

## Description

This Cordova / PhoneGap plugin enables adding stickers to WhatsApp. Designed for the use in HTML5-based cross-platform hybrid applications.

## Features

Platforms supported:
- [ ] Amazon-FireOS, via Android SDK (part of Google Play service)
- [x] Android, via Android SDK (part of Google Play service)
- [x] iOS
- [ ] Windows Phone


## Quick Demo

Wanna quickly see the mobile ad on your simulator or device? Try the following commands.

```bash
    # install cordova CLI
    [sudo] npm install cordova -g

    # install a small utility to run all the commands for you
    [sudo] npm install plugin-verify -g

    # Demo: run tapsell plus demo with sample index.html
    plugin-verify cordova-whatsapp-stickers
```

## Quick start
```bash
	# create a demo project
    cordova create test1 com.miladesign.sw Test1
    cd test1
    cordova platform add android

    # now add the plugin, cordova CLI will handle dependency automatically
    cordova plugin add cordova-whatsapp-stickers

    # now remove the default www content, copy the demo html file to www
    rm -r www/*;
    cp plugins/cordova-whatsapp-stickers/test/* www/;

	# now build and run the demo in your device or emulator
    cordova prepare; 
    cordova run android;
    # or import into eclipse
```

## Installation

* If use with Cordova CLI:
```bash
cordova plugin add cordova-whatsapp-stickers
```

* If use with PhoneGap Build:
```xml
<plugin name="cordova-whatsapp-stickers" source="npm"></plugin>
```

Notice:
* If build locally using ```cordova-whatsapp-stickers```, to avoid build error, you need install some extras in Android SDK manager (type ```android sdk``` to launch it):
![android extra](https://cloud.githubusercontent.com/assets/2339512/8176143/20533ec0-1429-11e5-8e17-a748373d5110.png)

## Usage

Add sticker pack to WhatsApp.

Step 1: Place your stickers inside www folder.

Step 2: Edit contents.json file and place it inside www folder.

### For Android
Step 3: To add sticker pack to WhatsApp call this function:

```javascript
function addToWhatsApp(identifier, name) {
	jsonObject = { "identifier": identifier, "name": name };
	json = JSON.stringify(jsonObject);
	window.WhatsAppStickers.addToWhatsApp(json, function() { alert(name + " Added to WhatsApp"); }, function(e) { alert("Error. Message: " + e); });
}
```

### For iOS
Step 3: Want interstitial Ad to earn more money ? Easy, 2 lines of code. 

```javascript
data = {
	ios_app_store_link: '',
	android_play_store_link: '',
	identifier: 'PACK ID',
	name: 'PACK NAME',
	publisher: 'PUBLISHER NAME',
	publisher_website: '',
	privacy_policy_website: '',
	license_agreement_website: '',
	image_data_version: '1',
	avoid_cache: false,
	tray_image: 'PNG IN BASE64',
	stickers: [
		{
			image_data: 'WEBP IN BASE64',
			emojis: ["☕", "🙂"]
		},
		{
			image_data: 'WEBP IN BASE64',
			emojis: ["☕", "🙂"]
		},
		{
			image_data: 'WEBP IN BASE64',
			emojis: ["☕", "🙂"]
		},
	]
};
    
json = JSON.stringify(data);
window.WhatsAppStickers.addToWhatsApp(json, function() { alert(name + " Added to WhatsApp"); }, function(e) { alert("Error. Message: " + e); });
```

For images, they must not have prefixes data:image/png;base64, or data:image/webp;base64, otherwise, WhatsApp will point out an error when sharing the Sticker.

## Screenshots

![ScreenShot](https://raw.githubusercontent.com/VinoosIr/cordova-whatsapp-stickers/main/docs/screenshot1.jpg) | ![ScreenShot](https://raw.githubusercontent.com/VinoosIr/cordova-whatsapp-stickers/main/docs/screenshot2.jpg)


## License

You can use the plugin for free. IMPORTANT!!! Before using the plugin, please read the following content and accept the agreement. THIS WILL AVOID POTENTIAL PROBLEM AND DISPUTE.

There are 3 license options, fully up to you:
1. Free and Open Source, no support
2. Commercial, with email/skype support
3. Win-win partnership, with forum support

## Credits

This project is created and maintained by Milad Mohammadi Rezagah.

More Cordova/PhoneGap plugins by Milad Mohammadi Rezagah, [find them in plugin registry](http://plugins.cordova.io/#/search?search=miladesign), or [find them in npm](https://www.npmjs.com/~miladesign).

Project outsourcing and consulting service is also available. Please [contact us](mailto:rezagah.milad@gmail.com) if you have the business needs.