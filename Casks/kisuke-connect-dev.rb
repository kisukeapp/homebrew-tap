cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.28"
  sha256 arm: "71f0b8948c5bdd02e2797f6fed4d17c7c629ce3679779b242eb4fac6c697e09e", intel: "29100f16df908c750998e8dc9491e59341b6208ce637b11499934f910b771fd9"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
