cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.94"
  sha256 arm: "32ea3a9283f856c840377ce95901f4d9dce85e32e0402d00affe187ff5753b42", intel: "c585485451eb0f17c7ef6e1269a684f364308937b9480cad59f4cd4b24d49196"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
