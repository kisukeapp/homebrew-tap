class KisukeCli < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.2.10"

  on_macos do
    on_arm do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "6420876f5c4ec3ef46a66d0a99d9b0b67e05e6b85cdd2bd9fd7fbe846265b4aa"
    end
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "ff1bb8557676a1d1e5c038379b362107088f3b2558c33f1e758683bcd8f64e21"
    end
  end

  on_linux do
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "81d053fd121a48383dab62b09f8fd7c74bbf11f6f36533bc1d61566df4637e53"
    end
      on_arm do
        url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
        sha256 "b71b20c2e0a055ab2b801aeb29a662f72a976ff589b6552e9c695b448d10889b"
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
