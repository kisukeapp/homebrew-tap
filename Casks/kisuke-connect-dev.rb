cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.23"
  sha256 arm: "cafeb8442932c3ec4163f484d237dc204348986bf187f6ef2ec193a77f45df05", intel: "f909eac4977be42a95f381da488f8fa1bc44a4eba1eeff6aaadb24bcc214e6f3"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
