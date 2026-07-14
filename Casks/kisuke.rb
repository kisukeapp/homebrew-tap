cask "kisuke" do
  version "1.2.12"

  on_arm do
    sha256 "9c84c0a2f98c4de860c7f02c57b60ee023e1847313fe6081b231b7a4a8ef88fd"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "4df5532b1c645d25571ac5e2f6231cc555ee21aeb34a214c7248e2f0d6bdae0e"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
