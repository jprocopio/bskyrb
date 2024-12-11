lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bskyrb/version"

specfiles = Dir["./lib/bskyrb/*", "./lib/atproto/*"]
specfiles.push("./lib/bskyrb.rb")

Gem::Specification.new do |spec|
  spec.name = "bskyrb"
  spec.version = Bskyrb::VERSION
  spec.authors = ["Shreyan Jain", "Tynan Burke"]
  spec.email = ["shreyan.jain.9@outlook.com"]
  spec.description = "A Ruby gem for interacting with bsky/atproto"
  spec.summary = "Interact with bsky/atproto using Ruby"
  spec.homepage = "https://github.com/ShreyanJain9/bskyrb"
  spec.license = "MIT"
  spec.files = specfiles
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "json", ">= 2.0"
  spec.add_runtime_dependency "date", ">= 3.3.3"
  spec.add_runtime_dependency "httparty", ">= 0.21.0"
  spec.add_runtime_dependency "xrpc", ">= 0.1.5"
  spec.add_runtime_dependency "nokogiri", ">= 1.12.4"
  spec.add_runtime_dependency "mini_mime", ">= 1.1.2"
  spec.add_runtime_dependency "addressable", ">= 2.8.0"
  spec.add_runtime_dependency "mini_magick", ">= 4.12.0"
  spec.add_runtime_dependency "logger", ">= 1.5.3"
  spec.add_runtime_dependency "streamio-ffmpeg", ">= 3.0.2"
end
