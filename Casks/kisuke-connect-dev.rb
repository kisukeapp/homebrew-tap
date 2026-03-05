cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.84"
  sha256 arm: "e28e30d276ab72b3eebe520c4ed55b886fa907077a1115b8c8924969ed4f8d1c", intel: "2a747abed0a7f437954ce77afa8618a79e3385312738f2a3281b3f473ecdba61"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
