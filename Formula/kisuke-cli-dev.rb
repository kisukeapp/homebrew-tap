class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "e553acf9fa95f8d1d6f74787a59768aa36fdc1130d33b3cb1688c53543864c9b"
    else
      url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "433a505d0111ef82ce6dec1f80b8895fbbc36827263744b53afeab447589b274"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "5f3c20d01806db0ffdc5a5e9d86dcff7c5c4f78278bb1b10f3605c2ba3ca1f84"
    else
      url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "2ad33b64f9aaf8eb23e91ee087b5843ac29e52cfc39109c201f2d27107633580"
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
