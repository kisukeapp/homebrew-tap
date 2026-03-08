cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.87"
  sha256 arm: "4fe22c5c677b53a8bec16821b9f5e7229c4384c8793ac6c9526bf24bcdc789af", intel: "6dce264ee367e06951910775cfad300b37927b8d38f7d72e532273efa4f13849"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
