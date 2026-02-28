cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.55"
  sha256 arm: "910696281f03541f5269efeeaa2c3eff793723a61ba72482a1afa6d4acdb3eea", intel: "decea543ae359f158e3500dee066a299f0073d40f959b12864422fe695ce93d4"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
