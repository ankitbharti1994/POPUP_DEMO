Pod::Spec.new do |s|
s.name         = "POPUP_DEMO"
s.version      = "1.0.0"
s.summary      = "Simple POP UP presentation"
s.description  = <<-DESC
to present the popup on the screen with image , buttons and labels.
DESC
s.homepage         = "https://github.com/ankitbharti1994/POPUP_DEMO"
s.license          = { :type => "MIT", :file => "LICENSE" }
s.authors          = { "ankit bharti" => "ankitbharti1994@gmail.com" }
s.social_media_url = 'https://twitter.com/Ankit_bharti94'
s.platform     = :ios, "6.0"
s.source       = { :git => "https://github.com/ankitbharti1994/POPUP_DEMO.git", :tag => "1.0.0" }
s.source_files  = "POPUP_DEMO/**/*.{h,m}"
s.requires_arc = true
s.dependency 'SDWebImage'
s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

end
