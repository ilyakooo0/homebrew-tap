cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "6b6d07d"
  sha256 arm: "ccfd32e59c47dccdb9d3b1490a0d392bc31c3c4d8cc5083707e506d5e5028be4", intel: "1b8790ed601b2e828d12d34c6a8c6da55e7d7add7675c93c81315bdb23b03a6a"

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
