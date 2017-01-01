Pod::Spec.new do |s|

  s.name    = 'GoSquaredAPI'
  s.version = '0.6.2'
  s.summary = 'Swift library for interacting with the GoSquared API'
  s.author  = { 'Ed Wellbrook' => 'edwellbrook@gmail.com' }

  s.license  = 'MIT'
  s.homepage = 'https://github.com/edwellbrook/gosquared-swift'

  s.source       = { :git => 'https://github.com/edwellbrook/gosquared-swift.git', :tag => "v#{s.version}" }
  s.source_files = 'Sources/*.swift'
  s.requires_arc = true

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'

  s.dependency 'libCommonCrypto'

end
