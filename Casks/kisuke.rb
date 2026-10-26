cask "kisuke" do
  version "1.2.32"

  on_arm do
    sha256 "d16f4b5b6667a2c0ec1bb45004c1fdd0c0358564aa04d2e0bef7efa09bf9d028"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "3b8c30fc6092357de455753aa53899ca45d98e52bfe1ea896fc9e34fa695f9b1"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
