cask "kisuke-dev" do
  version "1.1.40"

  on_arm do
    sha256 "b2f42f715796fb5c054017e226febe8005ce01e13bc44bd1d3ba1c33df984037"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "ae79b32cc2a83396ddf8d76965c728ffa018fbf72b30a4cc338104c96ab35e64"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
