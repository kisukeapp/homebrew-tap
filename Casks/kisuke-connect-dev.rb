cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.64"
  sha256 arm: "99a973946cd6bc4e3598b751c332d1546bee62204ac8bb77d6a19eb02c19cff8", intel: "81ed1dd38f5a4a0a2ce07aebc7b1304a40abc7e3142d7cb5569e7cb5bafc74b5"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
