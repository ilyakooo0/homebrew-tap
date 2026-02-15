cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "04345a8"
  sha256 arm: "efbe69c65b06fc4f6cb990a3e435fea287cdf052c4c89be36e7f187ce4c5efd4", intel: "7f65832e0f49804b7b3f782ed0bf1718e7116a3c3b87e1f801572e7b36858363"

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
