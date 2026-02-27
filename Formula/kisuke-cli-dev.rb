class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "78673a2cbd1a6db8d57073ecf49e8ed833d3635d3498bf2e2fdc34410298234b"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "a5b1039b2210f348ffb3f9e586046700eeb1295c5f4a3da3e7739296420bdc96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "e9d5b98523aa85ff40b3739c833b1d836d62e2430d82d253a6b2a94a60600184"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "d2a9afacf736abef998e00c124c63f29dbe2b5894615f03fe3e75163d7a5bf88"
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
