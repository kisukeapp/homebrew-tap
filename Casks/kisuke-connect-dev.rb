cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.89"
  sha256 arm: "c45270193ac7b624f4581bdf6de5a885cf803e03c6e54d307463c716ca23e435", intel: "a895ef77b9c60309862eac123bd2cca72ba4153ece9d10410c562112a547673f"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
