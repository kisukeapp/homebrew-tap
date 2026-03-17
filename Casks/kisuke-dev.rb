cask "kisuke-dev" do
  version "1.1.31"

  on_arm do
    sha256 "29f78571a5cc92c2032a82ce244daa4d04d85224fc3f6ce201b5d9955b087b81"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "15c33135706d5c945d2e09331e2d765e497cf4fd0f194e85b59a152399119e6a"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
