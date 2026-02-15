cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "93748ca"
  sha256 arm: "f1695218ea6c6b89a468b6e7c362ecde73af613b3be7ab80003d107731d05026", intel: "16f368c077d5b45362c5ce88958465818d2328c407aa29968ab8f3577dcb8bcd"

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
