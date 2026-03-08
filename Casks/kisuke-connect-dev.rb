cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.88"
  sha256 arm: "082041511be690c6b1f8cb23eee3ef8246185223592ba652c198a4eb366036cd", intel: "a9fec0850ed2b55c5be521208758c29fa4020d1e9350fc91f2b68565706219d5"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
