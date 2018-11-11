#
# Be sure to run `pod lib lint KVMapping.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KVMapping'
  s.version          = '0.1.0'
  s.summary          = 'Mapping objects from NSDictionary'

  s.description      = <<-DESC
Category NSObject for mapping objects from NSDictionary
                       DESC

  s.homepage         = 'https://github.com/Vladislav-Plotnikov/KVMapping'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vladislav Plotnikov' => 'vladislav.plotnikoff@gmail.com' }
  s.source           = { :git => 'https://github.com/Vladislav-Plotnikov/KVMapping.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KVMapping/**/*'
  
  s.exclude_files = 'KVMapping/**/*.plist'
  
  # s.resource_bundles = {
  #   'KVMapping' => ['KVMapping/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
