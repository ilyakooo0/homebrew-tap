cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "e4dc5e8"
  sha256 arm: "a3da2a0380d9d183ef290cccbbd9f576252aecba47b47de4425fdfcba8ff7f89", intel: "0ec57b9eb573566e12f604df8da2f81e38e6d46b0f5041f289b313ef42f5f6e7"

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
