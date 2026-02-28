cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.62"
  sha256 arm: "2eef3fc8cefe5ab6331e2ad0780e0bd36a9807232b916b98d01d29f935a90d5b", intel: "859f80feb77dea81f69373e5767c230d1646d7c4b4c374572c60c104a83a6282"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
