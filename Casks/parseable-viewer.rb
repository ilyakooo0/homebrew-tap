cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "8bc3961"
  sha256 arm: "b91c22ef93a8633c4b32a40b988848fb0a7cc10f33fb552ab19ca0c031565ee9", intel: "e93f2753162911cb65d944cfc43511c1563548c14fdad03f80355708ef0802f7"

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
