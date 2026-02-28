cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.58"
  sha256 arm: "3e7d66c4c015af36047ef93f7c9b63bd1ab79d6d2b6fce2856e18eafb11c67c8", intel: "0d9ec5a18427c3e7366eab66bbbaed31fec2f29d618a2852304297748e23df76"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
