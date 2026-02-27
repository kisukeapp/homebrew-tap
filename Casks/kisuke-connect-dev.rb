cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.20"
  sha256 arm: "96d2bbbf6da4d509b0269012bef2f7349a71c0a5b638e045f11915140cd62777", intel: "3d1f8efc2329a2f6dae233527e9ef11f68296792da83f72748e54ab2f388be04"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
