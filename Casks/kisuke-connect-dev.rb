cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.76"
  sha256 arm: "4a7479a3a1370cad7e4bf79cd6593ab3df50111c0a31aec19c6d14f04b54db8b", intel: "90b06a11906a1273462783231b673df42e8435f273f10fb3276e1cfdfd7c6da3"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
