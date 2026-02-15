cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "bd84bf5"
  sha256 arm: "e04121d795f7abc2d4c827af9afa857d5686166c261559113e29986d11e5646b", intel: "a734b3c53c9aef5ea425c4d9b5dc6ef673e9f78875e2c2ca7c8d1d20b005bfdc"

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
