class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "89483e74e34b04018ec0b2d3ba9e39980d1b483a2722a1c6dc348aed84eaf747"
    else
      url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "32147dfdbaefee63f32b97754d45d327072229c55878489094a004dc71ee9da6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "0626f5953a4f6b3f69622692cdec4c783e6ff9e0e8749fd767d1776aee28a961"
    else
      url "https://6a348304da22f29510e4479f02a7fa33.r2.cloudflarestorage.com/releases/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "bc849ac63816cad745fe9458c74ea308f5a56adbf36fceb144b2c018e61f16b8"
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
