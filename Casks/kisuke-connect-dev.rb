cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.79"
  sha256 arm: "f49f1ac57a3c696dc33cbb91edc3e432463303957cbf8b9b1c1207bef4053101", intel: "99a84088cdb88bc0d336b7040588f371d1c3508d3551a1efe970c648da5abd7d"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
