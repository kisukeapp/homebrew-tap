cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.80"
  sha256 arm: "c29eae3bf49121c78f2c78ef5afe06d8514466ef8e56155559f688db7a5c250a", intel: "096b7c216f80807c596dbe3e20d6e9c02c10d7778c59aaf14512e6f56a5d6308"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
