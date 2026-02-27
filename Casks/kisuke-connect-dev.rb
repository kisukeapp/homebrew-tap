cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.41"
  sha256 arm: "b2dd517c4d6054d7730dc669dce41277fe0ce67e09d9880f247bc9c0b1fe0dfb", intel: "5c9f7fbb1e6069af64fc39e92b0941ae032c0ba7d0fc87949943e31085b0e019"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
