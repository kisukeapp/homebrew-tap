class KisukeCli < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.2.14"

  on_macos do
    on_arm do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "10b0652acd51d5c69509ec2ab14ee2843629319671aca2a64dc8c0eee3bd5cdb"
    end
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "6194dbdabd532f2fbd711f2acf5d507649313ab01ea2cdc7b8263545dbd79130"
    end
  end

  on_linux do
    on_intel do
      url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "de4e40f5c9c77a849ceadeaf494b2d6dc49c9639d49bcfa85372355f566d5624"
    end
      on_arm do
        url "https://download.kisuke.dev/kisuke/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
        sha256 "a85b9b1e044e0b6824dc2975d980d4d51a8f12f955f33a8c43568270aa4d15c9"
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
