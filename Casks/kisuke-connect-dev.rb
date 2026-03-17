cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.92"
  sha256 arm: "eb3b2c48e104fac65e483f4395cbee4d2f7c9631bbad585ce9e878be7a35957c", intel: "43137b87d718bd6a384135d78d59f32081d6bf60362dea6865668b2ddd95dee7"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
