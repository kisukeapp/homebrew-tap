class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.91"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "8ff6f339cd7836adf006618671e7c79db853ac3498e9eb576ed3e47cb36156e6"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "df174c322cf2dd541071f736766c0ded646278da994069968d71380adeb72835"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "2f16f9af6b3cbf7b58ff0fff0c52fd0fec38f68483add7e2995b8ca1bfd224df"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "ac0e372300ca303180e3af49570ab19255c0f163de622c667eb4737a7a224d1b"
    end
  end

  def install
    libexec.install Dir["*"]
    libexec.install ".env.staging" if File.exist?(".env.staging")
    bin.write_exec_script libexec/"kisuke"
  end
end
