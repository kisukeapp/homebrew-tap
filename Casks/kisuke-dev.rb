cask "kisuke-dev" do
  version "1.1.26"

  on_arm do
    sha256 "5e28e578fb097ae9ae7622cf770853710fedb5f0c629c19d1d13d7d3ea97dd71"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "943d3e0c0a0c87c08a38666c9aee9a0a2b37e7c62a3f225dc8d7748ec163fc1b"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
