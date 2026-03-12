cask "kisuke-dev" do
  version "1.1.28"

  on_arm do
    sha256 "141bc68b0ebc1d8de10d50d413fa6e3f536fa13d49e119acedb241cad75f6649"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "cc8e8de2e23ccb58face5b3748a99f597fa2dec0b461fd4b367560a397191101"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
