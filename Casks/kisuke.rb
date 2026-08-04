cask "kisuke" do
  version "1.2.20"

  on_arm do
    sha256 "3fb6c2bcc5cac249b65bd85cb7dc946ea10e8f163e064710e22fab44fd2c834a"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "456ff8df4ad62cc845be08ef8c123601082023158256add8a524602b94c3e9f0"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
