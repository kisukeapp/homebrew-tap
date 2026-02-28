class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.54"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "3636172d3c7aa1ae4f59a510e9361c758cdeb1801c53c9d510001312f142b4d7"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "45f85d34175f8932607de8402d3b14f35c6d49c5a95fee1fdfb0ab7a06af4f57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "ffbab9c0feacc5a09b0e2a3ee6ed3f13902a00bd2e59f73cb31ee1f9663410db"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "33aa627fc3994382dbe570cbbdb4969d3d66ae5cfe694249d6187894ba522ed7"
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
