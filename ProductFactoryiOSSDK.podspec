
Pod::Spec.new do |spec|

  spec.name         = "ProductFactoryiOSSDK"
  spec.version      = "1.0.2"
  spec.summary      = "ProductFactoryiOSSDK is Coherent Capital project"

  spec.description  = <<-DESC
  
    ProductFactoryiOSSDK is Coherent Capital project for facilitating apps. 
  
                   DESC

  spec.homepage     = "https://www.coherent.global/"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #


  # spec.author             = { "Coherent Capital" => "sales@coherent.global" }

  spec.author    = "Coherent Capital"

  # spec.social_media_url   = "https://www.linkedin.com/company/coherent-capital/"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
 

  # spec.platform     = :ios
  spec.platform     = :ios, "11.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source       = { :git => "https://github.com/CoherentCapital/ProductFactoryiOSSDK.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.vendored_frameworks = "Sources/CoherentSDK.xcframework"


end
