cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "cbbf39e"
  sha256 arm: "d1792f6a6dd1645f10d52b2a65685f2443448cf3eb7839f36932642dbefb459b", intel: "d152c3accdaa64543ae81f6f84031284ca8f39500080a91f62ce6a22cec32fb9"

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
