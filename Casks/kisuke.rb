cask "kisuke" do
  version "1.2.17"

  on_arm do
    sha256 "4d8d11c30ea67a10fc2226c3c11f22390ee5ca0f0e81cd131c97455679aa5614"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "a0258e4b04434098268aab042242648ccc0e252597f551877c2f83fae8ed03e4"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
