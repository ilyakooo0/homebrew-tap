cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "8b48a4b"
  sha256 arm: "3f5bb0baa90a9554784ce16cd8151d5e086aa7fb8e2ba4d69661ab760e1b6319", intel: "af195ad697398b595bc2c1ed7a1163685d0631c77ba5286de469a519a0997475"

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
