Pod::Spec.new do |s|

  s.name             = 'DocumentDetector'
  s.version = '16.4.0'
  s.summary          = 'DocumentDetector'
  s.license          = { :type => 'MIT', :file => './LICENSE.txt' }
  s.homepage         = 'https://github.com/combateafraude/iOS'
  s.author           = { 'services@caf.io' => 'services@caf.io' }
  s.source           = { :git => 'https://github.com/combateafraude/DocumentDetector.git', :tag => s.version.to_s }
 
  
  s.swift_version = '5.3.2'
  s.ios.deployment_target = '13.0'
  
  s.ios.vendored_frameworks = 'Sources/DocumentDetector.xcframework'
  s.source_files = "Sources/DocumentDetector.h"

  s.dependency 'TensorFlowLiteC', '2.14.0'
  s.dependency 'CafSolutions', '2.0.5'

end
