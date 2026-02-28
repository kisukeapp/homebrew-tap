cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.59"
  sha256 arm: "de4d6dda49ef9b55ccf5c1ca9c58e9a7b4f8dc344cfddb61c034275af64e7889", intel: "8d34a04e27c6f7ca54e055a07aad8082840adbfd7432602a45c0c19d667eedd0"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
