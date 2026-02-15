cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "a5079e2"
  sha256 arm: "c450de81383a52f909b6ec4b4a04234524defae8e891b62b971bd0cfab1a62c0", intel: "67d8a870cf2b418535fb617a51a86cda979043167339f3a12e3d39f50bd94083"

  url "https://github.com/ilyakooo0/parseable-macos/releases/download/latest/ParseableViewer-#{arch}.zip"
  name "Parseable Viewer"
  desc "A macOS client for Parseable"
  homepage "https://github.com/ilyakooo0/parseable-macos"

  app "Parseable Viewer.app"
end
