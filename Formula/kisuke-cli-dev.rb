class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "34675917ee81994c9848ba30908924c6059e102967fa72124b094e5e50d2e04e"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "7fd619d041b363e3f7cb24ba7f16c27bdf468f11a5306c02a87893272b382227"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "349e747480bbd15c59f01b598a9c45015bc9d1c95f23b5789a1c04382fb0a428"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "a55fa54076c036a7c990247c07b4dd03f167b11fe07179ca4489946ea730b0f3"
    end
  end

  def install
    bundle =
      if OS.mac?
        Hardware::CPU.arm? ? "kisuke-cli-#{version}-darwin-arm64" : "kisuke-cli-#{version}-darwin-x64"
      else
        Hardware::CPU.arm? ? "kisuke-cli-#{version}-linux-arm64" : "kisuke-cli-#{version}-linux-x64"
      end

    libexec.install Dir["#{bundle}/*"]
    env_file = "#{bundle}/.env.staging"
    libexec.install env_file if File.exist?(env_file)
    bin.write_exec_script libexec/"kisuke"
  end
end
