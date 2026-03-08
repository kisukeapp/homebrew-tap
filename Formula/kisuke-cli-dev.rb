class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.88"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "cbbe02059292aedcff71e7c3f7cbf08027a9fbdfabcb68bd1d8da496cf1cab4d"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "d08b929d943c85f5c8891b8a2f79bbaa26dba9fba20fc6cb60c6220fd118b775"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "c567a08f8722958a775bfba09c397b89ee52c4a3bf7906694fa2e78c6bc12bab"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "ede1e8459f5ffd0434b71f3b6a538e5e667ba51b3e0d81db5aca2a4092a48e0c"
    end
  end

  def install
    libexec.install Dir["*"]
    libexec.install ".env.staging" if File.exist?(".env.staging")
    bin.write_exec_script libexec/"kisuke"
  end
end
