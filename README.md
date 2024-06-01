# Cordova Plugin for eSIM Provisioning

## Overview

This Cordova plugin allows you to provision eSIMs on iOS devices by providing the necessary eSIM information such as ICCID, activation code, and SMDP address. It is designed to be integrated into OutSystems or any other Cordova-based mobile application.

## Features

- Provision eSIMs on iOS devices
- Compatible with OutSystems and other Cordova-based platforms
- Uses Swift for iOS integration

## Installation

To install this plugin, follow these steps:

### 1. Clone the Repository

```sh
git clone https://github.com/your-username/cordova-plugin-esim.git
cd cordova-plugin-esim

cordova plugin add path/to/cordova-plugin-esim


Sure! Here's a comprehensive README.md for your GitHub project:

markdown

# Cordova Plugin for eSIM Provisioning

## Overview

This Cordova plugin allows you to provision eSIMs on iOS devices by providing the necessary eSIM information such as ICCID, activation code, and SMDP address. It is designed to be integrated into OutSystems or any other Cordova-based mobile application.

## Features

- Provision eSIMs on iOS devices
- Compatible with OutSystems and other Cordova-based platforms
- Uses Swift for iOS integration

## Installation

To install this plugin, follow these steps:

### 1. Clone the Repository

```sh
git clone https://github.com/your-username/cordova-plugin-esim.git
cd cordova-plugin-esim

2. Add the Plugin to Your Cordova Project

sh

cordova plugin add path/to/cordova-plugin-esim

3. For OutSystems Users

    Go to OutSystems Service Studio.
    Navigate to your mobile application.
    Go to the “Resources” tab.
    Add the plugin by specifying the local path or the Git repository URL of the plugin.

Usage
JavaScript Interface

The plugin provides a JavaScript interface to interact with the native iOS code. Below is an example of how to use it:

javascript

var iccid = "your-iccid";
var activationCode = "your-activation-code";
var smdpAddress = "your-smdp-address";

cordova.plugins.esimProvisioning.addPlan(iccid, activationCode, smdpAddress, function(success) {
    console.log('eSIM provisioned successfully');
    // Handle success
}, function(error) {
    console.error('eSIM provisioning failed: ' + error);
    // Handle error
});
