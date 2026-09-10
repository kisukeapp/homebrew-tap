cask "kisuke" do
  version "1.2.26"

  on_arm do
    sha256 "c2f2574b3291bc6c2f20b788eb84af5d6b2f71e5b91fddbf91619aa0599e07d4"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "71bf6285032559bf75ab14eaa48f0a863ceece1036b1e5ee82d3903509d4aa5f"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
