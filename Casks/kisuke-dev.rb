cask "kisuke-dev" do
  version "1.1.24"

  on_arm do
    sha256 "3ba3a736387f8e7f6b036dae6bf83a60d44ade0ee4c4ebb5b0e2be2290ceb8ce"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "f38f77d52b8275411ebfec9667d5dc6c8d86be3ff3ecbe04c15f809b207bf273"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
