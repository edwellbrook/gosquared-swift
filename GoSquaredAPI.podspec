Pod::Spec.new do |s|

  s.name    = "GoSquaredAPI"
  s.version = "0.0.1"
  s.summary = "GoSquared API"
  s.author  = { "Ed Wellbrook" => "edwellbrook@gmail.com" }

  s.license  = "MIT"
  s.homepage = "https://github.com/edwellbrook/gosquared-swift"

  s.source       = { :git => "https://github.com/edwellbrook/gosquared-swift.git", :tag => "v#{s.version}" }
  s.source_files = "Sources/*"

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"

end
