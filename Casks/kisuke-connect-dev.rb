cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.46"
  sha256 arm: "14f2625bf947b579e4d8c090813fed82ef26502d64bb3a1c1ff198f296a8b557", intel: "14bd2f5f6b2a49220280b0e7895adfaeb6676459e2aaf1480db6dd1bd4f239a9"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
