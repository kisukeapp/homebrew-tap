class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.82"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "8a6e5e5d87e3eb5d683bdd0fe6106d9de8b8f2d02acba90a069946175761e7d2"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "78bd56a26eaab21fff749e3c9224af19599a427abbb6f303c3f585d581435a15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "5b1a940b0c848d706e8fd59f5fec1277bcd2b1786ec53f31937895c4abd23a16"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "df775b0b9a3f7c625dc15ed00874f0f4b5bf084810f0d1729dee8b745ddb36e7"
    end
  end

  def install
    libexec.install Dir["*"]
    libexec.install ".env.staging" if File.exist?(".env.staging")
    bin.write_exec_script libexec/"kisuke"
  end
end
