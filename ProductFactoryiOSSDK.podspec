
Pod::Spec.new do |spec|

  spec.name         = "ProductFactoryiOSSDK"
  spec.version      = "1.0.3"
  spec.summary      = "The intent of the Coherent iOS SDK is to allow new and existing applications to integrate a logic set deriving from the Coherent platform. The iOS SDK package primarily helps clients integrate a set of calculations and logic rules into a target front end. Furthermore, the package allows users to recall values using an offline and online syncing mechanism."

  spec.description  = <<-DESC
  
    The SDK contains a manifest.json contains API details pointing to the source platform, which houses the model, where values, logic and validation rules are derived from. The ultimate purpose of the SDK is to help our clients dynamically manage any calculation or logic change on their target app/platform without the need to re-deploy the application.
  
                   DESC

  spec.homepage     = "https://github.com/CoherentCapital/ProductFactoryiOSSDK"

  # spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #


  # spec.author             = { "Coherent Capital" => "sales@coherent.global" }

  spec.author    = "Coherent Capital"

  # spec.social_media_url   = "https://www.linkedin.com/company/coherent-capital/"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
 

  # spec.platform     = :ios
  spec.platform     = :ios, "11.0"
  spec.ios.deployment_target = "11.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source       = { :git => "https://github.com/CoherentCapital/ProductFactoryiOSSDK.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.vendored_frameworks = "Sources/CoherentSDK.xcframework"


end
