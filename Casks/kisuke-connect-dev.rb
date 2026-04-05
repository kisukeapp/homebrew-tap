cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.95"
  sha256 arm: "d36bcbc070bded0fcf4e889cef651598ad78aeb0cd24e3ebe8ae0006ce3aad63", intel: "80c05b11d64025e75faa57ee0048aaabc8672b1477396385ecd29997aa9b4d61"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
