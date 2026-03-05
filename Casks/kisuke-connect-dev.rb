cask "kisuke-connect-dev" do
  arch arm: "arm64", intel: "x64"

  version "1.1.85"
  sha256 arm: "f1aa9d52a744c506c07b8b9edb6615ff4bc23321b8817667b1b021b8c9049208", intel: "b1dacd43ad913022998fe65154daed69ab83f9082a67561f4f769ae08d950fc1"

  url "https://download.kisuke.dev/connect/#{version}/desktop/macos-#{arch}/kisuke-connect-#{version}-macos-#{arch}.dmg"
  name "Kisuke Connect"
  desc "Kisuke Connect desktop app"
  homepage "https://kisuke.app"

  app "Kisuke Connect.app"
end
