cask "kisuke" do
  version "1.2.30"

  on_arm do
    sha256 "d8c1d104fb40c5cbb31c9a29c408765123a31cda15bfe3bbb9b46977d6cb078a"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "fec4301561ad30354d5077988c86d6145c3d81d3d46624aee5adc158f1d4e874"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
