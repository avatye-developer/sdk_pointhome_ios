Pod::Spec.new do |spec|
  
  spec.name         = "AvatyePointHome"
  spec.version      = "1.8.8-kb"
  spec.summary      = "Avatye pointhome xcframework"

  spec.description = <<-DESC
  Library for providing a reward point system for iOS apps in Avatye
  DESC

  spec.homepage = "https://github.com/avatye-developer/sdk_pointhome_ios"
  spec.license = {:type => "MIT", :text => "Copyright (c) 2024 Avatye Corp."}
  spec.author = {"LimJaeHyuk" => "lim0202jh@avatye.com"}

  spec.source = {:git => "https://github.com/avatye-developer/sdk_pointhome_ios.git", :tag => spec.version.to_s}

  spec.ios.deployment_target = "13.0"

  spec.platform = :ios, "13.0"

  spec.swift_versions = ["5.0"]

  spec.vendored_frameworks = "AvatyePointHome.xcframework"

  spec.dependency "AvatyeAdCash", '~> 3.1.26'

end
