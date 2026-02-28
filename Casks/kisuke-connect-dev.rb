cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.60"
  sha256 arm: "67ee20d54f32cb224edce438450403573170adbe3530554e8c85f78169f91f3e", intel: "2bc69a548c380eb7efdf220f33cc58a3cbe1822aae22685978e9b20a5a4b33a4"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
