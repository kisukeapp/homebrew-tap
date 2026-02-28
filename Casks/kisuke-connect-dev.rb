cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.65"
  sha256 arm: "7d331679b14eba81a431f277be0ac161cb2067ac38d39092512a0fa1b10e19b0", intel: "66d01edb6ea1b0556023046ed04d2e70eb1727531bb6a2cb6244be90176a105c"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
