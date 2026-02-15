cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "4c2254e"
  sha256 arm: "6794875b32fa620fdbaf59815fd9ba2603e6c3484c6809170dc3770f637d0f35", intel: "f3348357e3ffd9981bf02e68bdcd0c578c669f0f857979509ffc94c39f80d159"

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
