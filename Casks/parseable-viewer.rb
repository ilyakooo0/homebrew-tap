cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "eb5d360"
  sha256 arm: "5094597957121f1538dce698609f112535d3ba749d0a71dd14f3b5cd2fa73a8f", intel: "2b0b7d8bf341ca25c9b63a7ed5d46bdc6f8399ea3b1df5eb88727f3021b6fef4"

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
