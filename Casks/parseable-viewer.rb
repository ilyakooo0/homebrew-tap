cask "parseable-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "5ef360a"
  sha256 arm: "01ba17bd0d1419516ee4ac1f345b39069bb0859f458e946c2440bd72d025ee4a", intel: "bc19cc153cd6ea8f9ab41d21ea74731fcbbcf947ac6336084523ad0e152dbdca"

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
