#
#  Be sure to run `pod spec lint TestSdk.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "TestSdk"
  spec.version      = "0.0.21"
  spec.summary      = "TestSdk is a simple swift library."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
                   TestSdk is a library for testing. 
                   It uses to test publish a binary to cocoapods
                   DESC

  spec.homepage     = "http://example.com/TestSdk"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "Long Pham" => "philong.bmt@gmail.com" }
  # Or just: spec.author    = "Long Pham"
  # spec.authors            = { "Long Pham" => "philong.bmt@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/Long Pham"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  spec.platform     = :ios
  spec.platform     = :ios, "15.0"
  spec.compiler_flags   = "-Wall -Werror -Wextra"
  spec.swift_version    = "5.9"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  # spec.visionos.deployment_target = "1.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { :git => "https://github.com/longpham2310/TestSdk.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "Sources/TestSdk/*.swift"
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.ios.preserve_paths = 'Frameworks/*.framework'
  # spec.ios.vendored_frameworks = "DemoFramework.framework"
  # spec.dependency = "DemoFramework"
  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

  # spec.subspec "VendoredFrameworkExample" do |s|
  #   s.name                    = "VendoredFrameworkExample"
  # s.version                 = "0.0.1"
  # s.summary                 = "Vendored Framework in a spec test pod."
  # s.description             = "This spec specifies a vendored framework."

  # s.ios.deployment_target   = '8.0'
  # s.homepage                = "https://cocoapods.org"
  # s.license                 = { :type => "MIT", :file => "../../../../LICENSE" }
  # s.author                  = "Mark Spanbroek"
  # s.source                  = { :http => "https://github.com/AFNetworking/AFNetworking/releases/download/3.1.0/AFNetworking.framework.zip" }
  # s.ios.vendored_frameworks = "**/iOS/AFNetworking.framework"
  # end

  # spec.source                  = { :http => "https://github.com/AFNetworking/AFNetworking/releases/download/3.1.0/AFNetworking.framework.zip" }
  spec.static_framework = true
  # spec.dependency 'ZIPFoundation'
  spec.ios.vendored_frameworks = 'Frameworks/self_ios_sdk.framework', 'Frameworks/DemoSdk.framework'
  spec.dependency 'GoogleMLKit/FaceDetection'
  # spec.dependency 'SwiftyBeaver'
  # spec.subspec "ThreeDSecure" do |s|
  #   # s.source_files = "Sources/BraintreeThreeDSecure/**/*.{swift}"
  #   # s.dependency "Braintree/Card"
  #   spec.source_files  = "Sources/TestSdk/*.swift"
  #   s.vendored_frameworks = "Frameworks/XCFrameworks/CardinalMobile.xcframework"
  # end
  # spec.framework = "UIKit"
  # spec.requires_arc = true
  # spec.vendored_frameworks = "Frameworks/AdamPodFramework-0.1.0/AdamPodTest.framework"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
