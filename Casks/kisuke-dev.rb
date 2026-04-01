cask "kisuke-dev" do
  version "1.1.37"

  on_arm do
    sha256 "9ca220e58ed24b2385d78aa86f7348953592240b1dfa5e81e437314e744226ac"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "2b2ebb6cd19c7fbc20272475d4e541cf1cb58e19f8add71f2aa3de27f182d317"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
