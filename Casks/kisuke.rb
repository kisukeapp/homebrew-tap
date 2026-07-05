cask "kisuke" do
  version "1.2.6"

  on_arm do
    sha256 "6b583e02ab1b70ea05a6cb1eb25a5dee275831cedead4cf7d90e8ed3e59e35e9"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "55e1bccd9d1af89daf390a303027fa33cceb28d3598106ecc62b63e533437e81"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
