cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "1f946c0"
  sha256 arm: "546627c36586e111df902a82c410b0c794f8a3b825251b65624f6ef9bbb29ae6", intel: "a4e8b7963108b91d23d501bdff1c73ad0971c219b0ed4bf01a6c2bd724c640b6"

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
