cask "kisuke-dev" do
  version "1.1.30"

  on_arm do
    sha256 "0da77c20643b54ad0f74dc8d411ad5f1d9acfc0563d08b5bbf1869bf44500f82"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "f2919d3cd67572cf3e0a3be88a051d25ebf8b4cdaba61d3b94b81e6b4303825f"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
