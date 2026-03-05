cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.78"
  sha256 arm: "6cab11260181b6a1ee1b194c4a0cf8084abbd08fbddf4fcd3939c58d35581560", intel: "18fc57fa960870335abbca58703736187dad6cdeaeed8ba444b0ec225e6905f6"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
