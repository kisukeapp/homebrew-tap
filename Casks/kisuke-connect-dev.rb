cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.93"
  sha256 arm: "b5fc2f83e38c2e33afac56372655fa95f3ebf23983643220f5a963d5f7a38b3a", intel: "b885b6b959e51c22f3aa9a6b972e7952aa770815bc91c88e9c728e3a2fb07d92"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
