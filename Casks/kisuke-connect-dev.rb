cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.38"
  sha256 arm: "1168a8045009628210f14e254ec6ef07f54044d1ab9019ec085ab8bd34103c48", intel: "0e6b9ea2200f0b3fa68306b152b07e5916da2d182e8296b64c0137bfd4fb0dbe"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
