cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.82"
  sha256 arm: "1bf129af0516a93de70084694b259078e3970bc49648b47e7a20ea97f7338c94", intel: "40998c5b30e8c64822c82f169e520933051b0d09bd89e50c3bba46f06a5cbe0d"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
