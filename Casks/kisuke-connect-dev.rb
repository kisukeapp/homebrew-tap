cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.54"
  sha256 arm: "108f81152d1d3a4b77335a6aca29ccd4600ee53201dc7ae49ff84311a1892ca7", intel: "a875ade9506bbb55e9667b1a862d59db5baa61d61a115ba73e69e6fb2d3cbc01"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
