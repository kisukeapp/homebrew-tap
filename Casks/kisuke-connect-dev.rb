cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.22"
  sha256 arm: "93ab3a667d359158ace7b65dd6ad3b2288fc8aada1ba44126b41ac18bc4db1f5", intel: "6c03f718c51fc4f794d640d0602916b69d450c9b3159ae9d26a7e2e1e1548cbb"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
