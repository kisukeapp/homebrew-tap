cask "kisuke-dev" do
  version "1.1.22"

  on_arm do
    sha256 "d2ce0d3890a06a576ecb536cfe055112bd917761a2e4cd24ae906e1b53a3d83b"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "64cc0f6567f0447647fec90efa782b25fd32901d4b482780c73de22e3c04e389"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
