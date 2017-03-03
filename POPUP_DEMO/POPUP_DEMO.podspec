Pod::Spec.new do |spec|

#name
spec.name         = "POPUP_DEMO"

#version
spec.version      = "1.0.1"

#summary
spec.summary      = "Simple POP UP presentation"
spec.description  = <<-DESC
to present the popup on the screen with image , buttons and labels.
DESC

#homepage
spec.homepage         = "https://github.com/ankitbharti1994/POPUP_DEMO"

#license
spec.license          = { :type => "MIT", :file => "LICENSE" }

#author
spec.authors          = { "ankit bharti" => "ankitbharti1994@gmail.com" }

spec.social_media_url = 'https://twitter.com/Ankit_bharti94'
spec.platform     = :ios, "9.0"

#source and source file
spec.source       = { :git => "https://github.com/ankitbharti1994/POPUP_DEMO.git", :tag => "1.0.1" }
spec.source_files  = "POPUP_DEMO/**/*.{h,m}"
spec.resources = "POPUP_DEMO/**/*.{png,jpeg,jpg,xib}"

#deployment target
spec.ios.deployment_target  = '9.0'

#arc
spec.requires_arc = true

#framework
spec.ios.framework = 'UIKit'

#dependency
spec.dependency 'SDWebImage'
spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

end
