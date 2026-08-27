cask "kisuke" do
  version "1.2.24"

  on_arm do
    sha256 "4aac4abe8aa958401e4e2619bea911fdac235b284d4d83ba4d2e60696733e950"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "9587803d832b384df60fd2d6640c1b692c3d4d5ad49bd474b0f2726db738c7be"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
