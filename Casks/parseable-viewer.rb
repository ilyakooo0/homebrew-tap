cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "c872be4"
  sha256 arm: "87db102164fce9bd7ad29c14f8fb0b9b28902fa6f8dfd446252a81a799551e69", intel: "695171b115b1d30126cb7baaa28986f1c5a35aa6e1088ae3372468fa78df9026"

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
