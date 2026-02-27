cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.29"
  sha256 arm: "97d0404b7cc5179725f3a2dedb22102bc70e2541a996c4c06117357819031b10", intel: "634a199cc53a2c2321563b050bc052677cb331afaf0d5fdafb8984c12894bec8"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
