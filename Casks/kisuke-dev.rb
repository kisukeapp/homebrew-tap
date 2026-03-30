cask "kisuke-dev" do
  version "1.1.33"

  on_arm do
    sha256 "496f26e69cc96d11f6377fb6cd3b814a831dba5012f45ee8dd4806e555073eaa"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "06cde2ba06da67f3d2f1272e94bc633ae5a4ef10ebb7faf26a3ac17e51c2226a"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
