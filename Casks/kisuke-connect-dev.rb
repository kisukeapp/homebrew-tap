cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.42"
  sha256 arm: "8891a467dbd3de8dfedec7a19f10891789b1d69c1eaba9dcbcd7ff23d7dfb510", intel: "4b2c09bed812b07d5d2f8807da108755c817461c93669c9181d41d9414b094de"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
