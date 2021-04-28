
Pod::Spec.new do |spec|

  spec.name         = "ProductFactoryiOSSDK"
  spec.version      = "1.0.3"
  spec.summary      = "Coherent Product Factory is the new gold standard for developing and updating General Insurance, Life and Health products."

  spec.description  = <<-DESC
  
    Coherent Product Factory is the new gold standard for developing and updating General Insurance, Life and Health products. It’s a single platform on which you can test, integrate and operationalise new products, and update existing pricing, product and compensation models.
  
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
