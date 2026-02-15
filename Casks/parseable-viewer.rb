cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "c7e5d4e"
  sha256 arm: "d48cb3d5f2592d6d57be6bca511cffc95c0965737cdf7064fe15ffc4ae3a6706", intel: "925e431dee02a25ffc2e5fe6a95673a02970febec25ea0281f7112e16f981531"

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
