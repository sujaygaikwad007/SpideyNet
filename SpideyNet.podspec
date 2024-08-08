Pod::Spec.new do |spec|

spec.name         = "SpideyNet"
spec.version      = "1.0.0"
spec.summary      = "SpideyNet: Simplify network requests in Swift with ease"
spec.description  = "SpideyNet is a lightweight and easy-to-use Swift library designed to simplify the process of making network requests. It provides a convenient and clean API for performing common HTTP methods (GET, POST, PATCH, DELETE), handling responses, and managing network errors."
spec.homepage     = "https://github.com/sujaygaikwad007/SpideyNet.git"
spec.license      = "MIT"
spec.author       = { "Sujay Gaikwad" => "gaikwadsujay007@gmail.com" }
spec.platform     = :ios, "15.0"
spec.source       = { :git => "https://github.com/sujaygaikwad007/SpideyNet.git", :tag => spec.version.to_s }
spec.source_files  = "SpideyNet/**/*.{swift}"
spec.swift_versions = "5.0"


end
