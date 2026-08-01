cask "kisuke" do
  version "1.2.19"

  on_arm do
    sha256 "8091260520776af761d5231e7d55c9247a9352275b28b61f3c88b8ae8b9d78a1"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "b732fca7cf2a542112d2bf49cfbb394879423aeee01d9020949a6bbc1263391c"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
