cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.91"
  sha256 arm: "0b5cbdee4d4a4484f8e79546bd068119d6e31e07de7b6076ae270ff30d86263b", intel: "ffd41cd0aaf2cb0413d459cfe5a896c08daf706e2f8c9ce735a7fb2254ecb1bf"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
