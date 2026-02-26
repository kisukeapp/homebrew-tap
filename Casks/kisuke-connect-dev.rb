cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.16"
  sha256 arm: "846c36377eb48023f004214a4659688eba435be9104fedcc9b6a47e4b943edd2", intel: "d08936fe77987eb837caafc3432d9b291c6c212d7719347e54fe0c0a50f5da01"

  url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
