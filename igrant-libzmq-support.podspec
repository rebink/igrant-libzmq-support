#
# Be sure to run `pod lib lint igrant-libzmq-support.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'igrant-libzmq-support'
  s.version          = '0.1.0'
  s.summary          = 'A short description of igrant-libzmq-support.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/rebinkpmna@gmail.com/igrant-libzmq-support'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rebinkpmna@gmail.com' => 'rebin@bluecast.ae' }
  s.source           = { :git => 'https://github.com/zeromq/libzmq', :tag => 'v4.2.3' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files =  [
     "src/*.{h,hpp,c,cc,cpp}",
     "include/*.h",
     "cmake_build/*.hpp"
   ]
   s.public_header_files = [
     "include/*.h"
   ]
   s.libraries = ["stdc++"]
   s.requires_arc = false
   s.prepare_command = "mkdir cmake_build && cd cmake_build && cmake .. | tee \"/tmp/$(basename $0).$$.tmp\"\n"
  # s.resource_bundles = {
  #   'igrant-libzmq-support' => ['igrant-libzmq-support/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
