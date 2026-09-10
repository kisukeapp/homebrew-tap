cask "kisuke" do
  version "1.2.27"

  on_arm do
    sha256 "a9075874fbe93be702ad345574a4f5e32741a483d73f01fb5f5cebac847e3086"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "1f5175aff00094cd88d997c772a88a17c334da80f0d7489f54257e9cb5826f18"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
