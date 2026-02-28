cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.56"
  sha256 arm: "bdfec75fbb5d59f2ec7a3cbc4e3899e682ba3678897729adc863580fe9c6052a", intel: "b0d46000b03b02f1c6776100fc8fdbac7f62ee27b9c0163a34daf079db40a50f"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
