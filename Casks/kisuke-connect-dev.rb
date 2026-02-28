cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.63"
  sha256 arm: "0660e2891c3569f443a1813d1699c563a8553c42ec1d28260ad29897b27b8925", intel: "5c301a8899a28b905a48642b9e4d6d36c289cbd8639f05794bdfdfafd7a6a22b"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
