cask "kisuke" do
  version "1.2.10"

  on_arm do
    sha256 "422cc963a4c4db054c11d783309f9293a8326312c74de477cb82018a3d142313"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_arm64/kisuke-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "cab503c3f161b999bfdbc091e45db899f8cf86b62b69aa1c62f029e2aaf102eb"
    url "https://download.kisuke.dev/kisuke/#{version}/mac/arch_x86/kisuke-#{version}-macos-x64.dmg"
  end

  name "Kisuke"
  desc "Kisuke desktop app"
  homepage "https://kisuke.app"

  app "Kisuke.app"
end
