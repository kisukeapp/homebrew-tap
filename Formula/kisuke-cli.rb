class KisukeCli < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.2.25"

  on_macos do
    on_arm do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "9774b9da715249ac4db35dd498262ccbbd6d2b4aa85e7bf56d462808ce6d3305"
    end
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "f67004fc4bcc33a4cde6062603096479df593c6f8c08e52f2c44b64e8947b2d6"
    end
  end

  on_linux do
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "8e7ed2d1f39f758e4ffa8861bb868fddb94bb61c6fc9b45123c7248ba2b9031e"
    end
      on_arm do
        url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
        sha256 "2debd9703e74ccc40c3000ab7d304b8566a881f4f18ad5bdf57e074095be99bc"
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
