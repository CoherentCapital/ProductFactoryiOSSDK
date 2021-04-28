# ProductFactoryiOSSDK

**Develop and launch competitive insurance products at record speed**

*Coherent Product Factory is the new gold standard for developing and updating General Insurance, Life and Health products. It’s a single platform on which you can test, integrate and operationalise new products, and update existing pricing, product and compensation models.*

## Installation

### Get the latest version of Xcode
To build a project using the ProductFactoryiOSSDK for iOS, you need **version 11.0** or later of [Xcode](https://developer.apple.com/xcode/).


### Installation through Cocoapods

The ProductFactoryiOSSDK for iOS is available as a Cocoapods dependency. CocoaPods is an open source dependency manager for Swift and Objective-C Cocoa projects.

If you don't already have the CocoaPods tool, install it on macOS by running the following command from the terminal. For details, see the [CocoaPods Getting Started guide](https://guides.cocoapods.org/using/getting-started.html).

> sudo gem install cocoapods

1. If you don't have an Xcode project yet, create one now and save it to your local machine. (If you're new to iOS development, create a Single View Application.)

2. Create a file named `Podfile` in your project directory. This file defines your project's dependencies. You can create file by opening Terminal and move to your project directory and run following command

> pod init

3. Edit the `Podfile` and add your dependencies.

Here is an example which includes the dependencies you need for the ProductFactoryiOSSDK

```ruby
platform :ios, '11.0'

target 'YOUR_APPLICATION_TARGET_NAME_HERE' do

pod 'ProductFactoryiOSSDK', :git => 'https://github.com/CoherentCapital/ProductFactoryiOSSDK.git'

end
```

4. Save the `Podfile`

5. Open a terminal and go to the project root directory containing the `Podfile`
```ruby
cd <path-to-project>
```

6. Run the `pod install` command. This will install the dependencies specified in the `Podfile`

7. Close Xcode if opened, and then open your project's `.xcworkspace` file to launch Xcode. From this time onwards, you must use the `.xcworkspace` file to open the project.


### Installation through Swift Package Manager

> :warning: **Only supported with xcode 12 and above**: If you are using xcode 11 then please use cocoapods for Installation because in Swift Package Manager binaryTargets are only supported in xcode 12+,  swift 5.3

The Swift Package Manager is a tool for automating the distribution of Swift code or binary frameworks and is integrated into the swift compiler. ProductFactoryiOSSDK does support its use on supported platforms.

Adding ProductFactoryiOSSDK as a dependency is as easy as adding it to the dependencies value of your Package.swift.

```ruby
dependencies: [
    .package(url: "https://github.com/CoherentCapital/ProductFactoryiOSSDK.git", .upToNextMajor(from: "1.0.3"))
]

```

The other way to add dependency(framework or library) is Goto ***File -> Swift Packages-> Add Package Dependency*** and add the folowing URL for ProductFactoryiOSSDK and follow the steps.

```ruby
https://github.com/CoherentCapital/ProductFactoryiOSSDK.git

````


## Using ProductFactoryiOSSDK

1. Download `manifest.json` and add it to the project

2. Import SDK for `Objective-C`

```objective-c
#import <CoherentSDK/CoherentSDK.h>

```

3. SDK initialisation

To initialise SDK add the below code in AppDelegate didFinishLaunchingWithOptions,  if you want to initialise SDK at the start of the application but if you want to initialise later it can be added according to the requirement. This will initialise the SDK according to the manifest configuration settings. 

- To load offline runner add the runner file inside project and set isOfflineRunner to TRUE.

- To load offline model add the model file inside project and set isOfflineModel to TRUE.

- If need to update runner at run time then set updateable to TRUE otherwise FALSE

```objective-c

[[CoherentiOSSDK shared] initialiseSDKWithOfflineRunner:FALSE OfflineModel:FALSE Update:TRUE Completion:^(BOOL status, NSString * _Nullable result) {

  if (status) {
    //Successfully initialise
    NSLog("Message : %@",result);
  }
  else{
    //initialisation failed
    NSLog("Error : %@",result);
  }
}];

```
