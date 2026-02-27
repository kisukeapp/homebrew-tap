cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.26"
  sha256 arm: "90d054af7b78d78a6d77f4da4aec11afad200ea0bb78a80d5e75f05bafa036bc", intel: "0ed8090479cd4b4f4d12811baa85051e15b875dc69a7755b126bfe5de6c3f9ad"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
