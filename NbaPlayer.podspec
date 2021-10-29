Pod::Spec.new do |s|
  
  s.name             = 'NbaPlayer'
  s.version          = '0.2.0'
  s.summary          = 'This is my second Pod on Github.'
  s.author           = { 'Mihajlo Jezdic' => 'mihajlo.jezdic@gmail.com' }
  s.homepage         = 'https://github.com/mihajloj/NbaPlayer'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.ios.deployment_target = '9.0'
  s.source_files = 'NbaPlayer/**/*.{h,m}'
  s.frameworks         = 'Foundation', 'UIKit'
  s.source           = { :git => 'https://github.com/mihajloj/NbaPlayer.git', :branch => 'xyz', :tag => s.version.to_s }

end