cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "fd05280"
  sha256 arm: "e6729c7f3995ffad8b412dd540c4f862eea5d98cbfafa6a8556b06e6720cd102", intel: "bc7d582d197d49a02e0a821d6661dfde25b0ce4905db0ebc4c40d8c73f3f14ed"

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
