cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.15"
  sha256 arm: "d4ed0577f8dd9cc167735cf41bfd66f6e41503bec6b49869bb5ad01e8bc356ab", intel: "dbca078370b4e553b2e84bfd66c34cb5e518e6a24fe9cf4fefb7febe7c2e6f26"

  url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
