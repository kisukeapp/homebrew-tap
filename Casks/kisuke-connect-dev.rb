cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.21"
  sha256 arm: "c81092f721b165ccceca2b984ed86bf8b5fef3470955e1807fd972b810039aaf", intel: "b8d81f4ae918ecf66346408243da9e9a044131daed31b5feca92294edaecff1d"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
