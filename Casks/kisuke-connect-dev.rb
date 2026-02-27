cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.45"
  sha256 arm: "f199f15fd0bedf01263a4dcb1fd6dbbc1d2c2ab41e92441df670af42933b4e45", intel: "f33d60b18413dd4b573189d28393fd18f351298f7969a663886415cef645736d"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
