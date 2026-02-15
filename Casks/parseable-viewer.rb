cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "7eebda4"
  sha256 arm: "bd7d8e5baaf21d8d12c443fb7ddc127506f856bcf577c7a99d53bbc9933f35d4", intel: "c07c7b1dbe01d31ac4c95b25a308015505e97c212b4a01e54fc31b19f25d3015"

  url "https://github.com/ilyakooo0/parseable-macos/releases/download/latest/ParseableViewer-#{arch}.zip"
  name "Parseable Viewer"
  desc "A macOS client for Parseable"
  homepage "https://github.com/ilyakooo0/parseable-macos"

  app "Parseable Viewer.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Parseable Viewer.app"],
                   sudo: false
  end
end
