cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "b3a700a"
  sha256 arm: "259946db86dd0bab0ee02d30ee83966472cee3a7d06d47bb4987cda6fceff1a2", intel: "d40d54f0e6ac1e29473e2d859950cd640462b4a67d91cbd1b6260625d6c1de10"

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
