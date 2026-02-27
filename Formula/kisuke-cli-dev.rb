class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "07ced97d2295c7fe8cc72e332c1f2e0ce337b902e0a8ae2884edf70cf2b3b966"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "ab8a50cfcb00a86001d431706912332ee2a116a5dad8aa01593f2ad79afaf8da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "0a61ba1e4819f86c7fdd36348cb35a383add11591bdf6d82f2f781b18601ac32"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "b612c3b65eee47d77064f027c7ffbaac731bd1116b216b4630d3c9d143286bbb"
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
