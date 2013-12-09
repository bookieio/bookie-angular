[![Build Status](https://travis-ci.org/bookieio/bookie-angular.png?branch=master)](https://travis-ci.org/bookieio/bookie-angular)

## Installation

    $ git clone https://github.com/bookieio/bookie-angular.git
    $ cd bookie-angular
    $ npm install

## Development

    $ ./node_modules/.bin/grunt

Go to [http://localhost:9001](http://localhost:9001)

## Phonegap Build

Create an account at [build.phonegap.com](https://build.phonegap.com/).

    $ ./node_modules/.bin/phonegap remote build android

Download the app to your phone from [your account](https://build.phonegap.com/apps).

---

## Customizing Phonegap Icons

Use [Phonegap Icon Splash Generator](https://github.com/tlvince/phonegap-icon-splash-generator) to update the application icons.

    $ ./phonegap-icon-splash-generator.sh bookie-logo.svg #ffffff www
