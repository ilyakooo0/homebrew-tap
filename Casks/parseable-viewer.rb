cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://github.com/ilyakooo0/parseable-macos/releases/download/latest/ParseableViewer-#{arch}.zip"
  name "Parseable Viewer"
  desc "A macOS client for Parseable"
  homepage "https://github.com/ilyakooo0/parseable-macos"

  app "Parseable Viewer.app"
end
