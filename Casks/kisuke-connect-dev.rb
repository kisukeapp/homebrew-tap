cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.67"
  sha256 arm: "d5d02329f94d2e6253eae2a7a1a01c8d6435b8d22fda2ae9820f73a7df71751d", intel: "a95f0f65e0adf2fbd31fbbf40e7f25080c19a9af1cb7a5d644ff263b57f8730e"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
