cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "f7e6812"
  sha256 arm: "b7e04ae90f6ebc0d4476d7bc98625db227a93fc1ddd831ed26386431e0aacf24", intel: "42b14323823cb4121310eaede14cd1fcbb2b01ca5cfaefaf5692a317f97a3740"

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
