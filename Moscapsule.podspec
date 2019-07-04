Pod::Spec.new do |s|

  s.name         = "Moscapsule"
  s.version      = "0.6.3"
  s.summary      = "MQTT Client for iOS written in Swift"
  s.description  = <<-DESC
                   MQTT Client for iOS written in Swift.
                   This framework is implemented as a wrapper of Mosquitto library
                   and covers almost all mosquitto features.
                   DESC
  s.homepage     = "https://github.com/playmoweb/Moscapsule"

  s.license      = "MIT"
  s.author       = { "tonary" => "contact@playmoweb.com" }

  s.platform = :ios
  s.ios.deployment_target = '10.0'

  s.source       = { :git => "https://github.com/playmoweb/Moscapsule.git", :tag => s.version }

  s.source_files = "Moscapsule/*.{h,m,swift}", "mosquitto/lib/*.{h,c}"
  s.public_header_files = "Moscapsule/Moscapsule.h", "Moscapsule/MosquittoCallbackBridge.h", "mosquitto/lib/mosquitto.h"

  s.libraries    = "ssl", "crypto"
  s.requires_arc = true
  s.xcconfig     = {
    'SWIFT_VERSION' => '4.0',
    'OTHER_CFLAGS' => '-DWITH_THREADING -DWITH_TLS -DWITH_TLS_PSK',
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/OpenSSL-Universal/lib"', # workaround
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/Public/OpenSSL-Universal"'
  }

end
