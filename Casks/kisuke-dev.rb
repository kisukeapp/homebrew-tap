cask "kisuke-dev" do
  version "1.1.27"

  on_arm do
    sha256 "f3d3b7fe6b87a6e335c58c97ef8c68d48aef18f9072d3ed0438516678832a3ef"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "f94e7289197ad17bdca3582580cba54998a5a3e8d22c4ef9f4b6cfeca4ea6776"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
