cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.61"
  sha256 arm: "40c89edd4cb6bc09b2f6f082fb5c1287da076f4dc147e1460318b40e9660b659", intel: "dc098b7ed83f24e0ec2634d33e0c25a284974ab7746ae3b8666673fd0a836ab5"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
