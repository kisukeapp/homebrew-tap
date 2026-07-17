cask "kisuke" do
  version "1.2.14"

  on_arm do
    sha256 "e58f61927895b13cccb5566f34b2f56b44893fad178dcb256803ad61480d77a2"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "67258ecccdfa34778103117d26dc8944810b0bf6e8f8b410016e6101ccc11669"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
