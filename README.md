![image](https://github.com/dashty8/cordova-plugin-esim/assets/76230144/f2625359-0dfe-4e64-8eb6-05bda94bfa78)# Cordova Plugin for eSIM Provisioning

## Overview

This Cordova plugin allows you to provision eSIMs on iOS devices by providing the necessary eSIM information such as ICCID, activation code, and SMDP address. It is designed to be integrated into OutSystems or any other Cordova-based mobile application.

## Features

- 📲 Provision eSIMs on iOS devices
- ✅ Compatible with OutSystems and other Cordova-based platforms
- 🚀 Uses Swift for iOS integration

## Installation

To install this plugin, follow these steps:

### 1. Clone the Repository

```sh
git clone https://github.com/your-username/cordova-plugin-esim.git
cd cordova-plugin-esim

cordova plugin add path/to/cordova-plugin-esim

## Usage
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




