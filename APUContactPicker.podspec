#
# Be sure to run `pod lib lint APUContactPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "APUContactPicker"
  s.version          = "0.1.0"
  s.summary          = "Contact picker with built-in datasource"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "APUContactPicker is a contact picker with datasource and views. Main view based on TLTagsView."

  s.homepage         = "https://github.com/Oleygen/APUContactPicker"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Hennadij" => "Oleygen@gmail.com" }
  s.source           = { :git => "https://github.com/Oleygen/APUContactPicker.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC ' }
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }


  s.source_files = 'Pod/Classes/**/*'

  s.ios.vendored_library = 'APUContactPicker/Pod/Libraries/APUContactPickerFramework.a'
 s.ios.library = 'APUContactPickerFramework'
  s.libraries = 'APUContactPickerFramework'
 
  s.resource = 'APUContactPicker/Pod/Assets/ContactPickerFrameworkResources.bundle'

end
