cask "kisuke" do
  version "1.2.25"

  on_arm do
    sha256 "a7b017783dca60f5d4a8bd4fd395dc568771397c4df2332c34b7dc323271c512"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "c192f4a6293c48b19cf72513de4802bdad18d3a0e857ec49bd795e0ee01f95d8"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
