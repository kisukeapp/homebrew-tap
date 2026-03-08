cask "kisuke-dev" do
  version "1.1.25"

  on_arm do
    sha256 "f15bc0ac75c7b6a6853ee78f0277a7568bcc08d3ae85154b3e21344b0b6ff1ca"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "415c0a961feb6380992a264a77726d6a2444ab59f098bf81d414ac3bb927e769"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
