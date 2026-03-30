cask "kisuke-dev" do
  version "1.1.32"

  on_arm do
    sha256 "7ac89cc6d37dd75c7fb07b64e0d4ca8f87dfdea09329d0efd52891e9a4fb2261"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "74bd7e145def8b074ec9f1862ccd5d6b54a99c6f1e4508ae1d8e10168d0d2f91"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
