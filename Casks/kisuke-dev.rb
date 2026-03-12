cask "kisuke-dev" do
  version "1.1.29"

  on_arm do
    sha256 "3eb6a409635f049576ff3318a71eb6ddc062d37ce988bf7f5ea8cea8e5b3b7ea"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "62113b032f1464908f5cdc85360c2d878ba9b8cabe86484d966ebaeb8384f7d4"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
