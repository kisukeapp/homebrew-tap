cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.57"
  sha256 arm: "8834c8ff07d7762be617a87d4bfa94d0dd0b91339fcd2bb9d9cf0dff9f6afc7e", intel: "847adf113c14dd384d774d69e8826e364009cf22bb226848eea3bee85792127d"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
