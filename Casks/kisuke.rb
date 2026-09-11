cask "kisuke" do
  version "1.2.28"

  on_arm do
    sha256 "99cea192c32f529ed288366a8301f62f6a836d9c2cb0e600ad621a24e5282cf9"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "7796a39aae4bbc7908c113d6ffd54643eb1c470990a2d33606ca7afe6f320250"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
