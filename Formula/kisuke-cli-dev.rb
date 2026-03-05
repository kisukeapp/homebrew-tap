class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.84"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "9b52a95781630091512c179a759ae75b9f10794742f08a4f5aebcfcb7fb108c5"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "2d35ef4a8db917fb0f15eba3fa0bf7a58ceac6a0f922b189cd8647881e7b53f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "010a4dc94acf5f096ffe24faff8b7975a81c0c37655ea4ba452393ec9a7bbbfa"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "2f58cf90691e77e3b68e2bb0bf498972a00fd26eca5494f0252bc3d1007c29d4"
    end
  end

  def install
    libexec.install Dir["*"]
    libexec.install ".env.staging" if File.exist?(".env.staging")
    bin.write_exec_script libexec/"kisuke"
  end
end
