cask "kisuke" do
  version "1.2.34"

  on_arm do
    sha256 "cf3edced04138231e208e28ebbc0e3e22d545e0237e3b12a0df5dacc7d51b483"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "e355cd8bba41a85230e49d528a904e5421274dc41502ed825a9349d89ac73f5b"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
