cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.90"
  sha256 arm: "457b819e5dab8b42347d5ddf9015a0230e2f56be219f7a9a8041b33ef1b8f117", intel: "aa2aa1d8fb3649d2de5042dbc102c0435f64f76f2e4b3ed39df120f0e7794309"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
