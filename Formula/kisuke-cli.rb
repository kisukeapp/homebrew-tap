class KisukeCli < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.2.12"

  on_macos do
    on_arm do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "87cfbe1212298daf48f7b32c608d6338c68008943369e9016087a00d2c28ca3d"
    end
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "56ccc78811718c08c1fc59bf3359281d8fdd4302db41c6a6e995845be9ec37fc"
    end
  end

  on_linux do
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "b4e1821b421a592af529da35d3ec0804850e500a4d308fdf93b3206c36ac8656"
    end
      on_arm do
        url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
        sha256 "726f39f9c05f7814d45ad24b33a380cefe516771631b10d1eb2117ca045fbb3c"
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
