class KisukeCli < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.2.34"

  on_macos do
    on_arm do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "29235525a25b90f278fd8cd19c9f2d4db561a02e4307073d929d89421b11ef6a"
    end
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "93929b5e81a975a9cc6808a2e4f1ce64c1051f88f275cd384689789a3f63d40d"
    end
  end

  on_linux do
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "7e72b7e65f890848e0799bf8041575684a2d376d70d006fc64cc268fb4ca9c01"
    end
      on_arm do
        url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
        sha256 "3f7f4b7050832d2ad150d7dde766738a2993d984e4b35207661b2bbd1e720052"
      end
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"kisuke"
  end

  test do
    system "#{bin}/kisuke", "--version"
  end
end
