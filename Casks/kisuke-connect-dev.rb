cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.31"
  sha256 arm: "077f74757a88ba268f8e4ddb5066081daf50a07b508674111fc07f0e1dd0f4e4", intel: "3c757a34c6c1f6bb8715b1bd7fa4ec96c2a41e8a500b184ff2c001517a62b30f"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
