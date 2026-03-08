cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.86"
  sha256 arm: "541291c9c5ab9d1ce6e6d9c32a893caf5015eb2e5924424569f896ffd6fd54dd", intel: "b1ecb0af5fd83a79e009d640d35aa9f748759a2ca2115e8a3352ee1a97e84c99"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
