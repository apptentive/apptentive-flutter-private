Pod::Spec.new do |s|
  s.name             = 'apptentive_flutter'
  s.version      = "6.2.3"
  s.summary          = 'Apptentive SDK for Flutter'
  s.description      = <<-DESC
Apptentive SDK for Flutter
                       DESC
  s.homepage         = 'https://github.com/apptentive/apptentive-flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Apptentive' => 'sdks@apptentive.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'ApptentiveKit', '6.5.0'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
