class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.87"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "8290785f9387d79d2f046b33570a5f9abf4c714f8bdab363dab5aaed67955674"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "18a90ee0dfac7b92c6adf0843cc40350870c2b777bbff6d11273304c65b97956"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "da9c84239d79310d416b6a40bfb985b4469b3c99d608aabf3680569d7e2a2f2f"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "1facf71519858fe752a377224d3e1013f890dd97c94e390186c7fd7e78f4f8de"
    end
  end

  def install
    libexec.install Dir["*"]
    libexec.install ".env.staging" if File.exist?(".env.staging")
    bin.write_exec_script libexec/"kisuke"
  end
end
