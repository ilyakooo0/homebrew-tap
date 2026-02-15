cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "e94b455"
  sha256 arm: "94e6641a850951f7e01c8d10849e8519cc2d05ca5c2c2958e26f37075e54b809", intel: "ee86e212d65a601209547ad866f33fe94910ae36de7f821bc24588f6d3110453"

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
