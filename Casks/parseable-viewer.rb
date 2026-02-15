cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "c70284f"
  sha256 arm: "b5cd1f0b177fba089f54ac123fd4e2f77b6a5f364737d07e4fc106f88763750e", intel: "3e17dac94f8275c9fbe40a79afef04670a042e1e05786069088966238a867525"

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
