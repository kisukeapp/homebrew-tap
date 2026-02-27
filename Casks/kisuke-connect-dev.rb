cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.33"
  sha256 arm: "0e502d9a13ca19a023178c0c791cc3030c757de202b91bdf1c6c4d4a43993790", intel: "f4e8c4ccfb41892d1b7e5494219a023f236949e34869585ced388d78ad576ddf"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
