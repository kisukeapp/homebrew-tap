cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.34"
  sha256 arm: "44b7c7369a1df0373c5e8b209747819e6c7595ef838474df7d607bd91926280e", intel: "13431c0c5f8701e0e03c41713d435d03d440d7c4cfbb86a59a98bc80d0605f32"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
