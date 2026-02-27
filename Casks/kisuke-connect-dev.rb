cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.35"
  sha256 arm: "b8e9b13dce02bad74120d43a301263ae17c092caa171bdfb3ef437402f080ccb", intel: "a1dc44e4d07d10114c3eaf49692de7e47336557cf159fbd00c8e6ee73afb4266"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
