#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "BaiduMapSDK"
  s.version          = '2.3.0'
  s.summary          = "Baidu Map SDK v2.3.0 For iOS"
  s.description      = <<-DESC
                       Baidu Map SDK v2.3.0 For iOSK

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "http://developer.baidu.com/map/sdk-ios.htm"
  s.license          = 'MIT'
  s.author           = { "mickel" => "qzqiang917@gmail.com" }
  s.source           = { :git => 'https://github.com/mickel917/BaiduMapSDK.git', :tag => 'v2.3.0' }

  s.platform     = :ios, '5.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.resources = 'Assets/mapapi.bundle'
  s.source_files = 'Classes/inc/*.h'
  s.public_header_files = 'Classes/inc/*.h'
  s.frameworks = 'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security'
  s.preserve_paths = 'libbaidumapapi.a'
  s.library = 'baidumapapi', 'z'
  s.xcconfig = {'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/BaiduMapSDK'}
end
