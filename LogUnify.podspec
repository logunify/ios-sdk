#
# Be sure to run `pod lib lint LogUnify.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LogUnify'
  s.version          = '0.1.3'
  s.summary          = 'LogUnify is a library makes logging events from your app to your data warehouse easy'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  LogUnify makes it easy to collect your application events and send them to your data warehouse for monitoring and analytics.
  Features
    * Code generation from event schema to ensure strongly typed events, multi-language support including Java, Swift, Typescript, etc.
    * Client SDK for iOS / Android / node for events transmission
    * K8s ready backend service for events ingestion
    * Integration with BigQuery, auto table creation, schema definition and evolution
                       DESC

  s.homepage         = 'https://github.com/logunify/ios-sdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'Yulong' => 'yulong@logunify.com' }
  s.source           = { :git => 'https://github.com/logunify/ios-sdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'LogUnify/Classes/**/*'

  # s.resource_bundles = {
  #   'LogUnify' => ['LogUnify/Assets/*.png']
  # }

  s.swift_version = '4.0'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SQLite.swift', '~> 0.14.1'
  s.dependency 'SwiftProtobuf', '~> 1.0'
  s.dependency 'ReachabilitySwift', '~> 5.0.0'
end
