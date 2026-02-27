class KisukeCliDev < Formula
  desc "Kisuke CLI"
  homepage "https://kisuke.app"
  version "1.1.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-arm64/kisuke-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "55be935ca1d9b740dbba34936795302e894250a83bd6dd4825493e103103f049"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/darwin-x64/kisuke-cli-#{version}-darwin-x64.tar.gz"
      sha256 "3c8bb1939b7593fc2cb68c9d6aad322afbf345851737128e51d8bda9a8ba7125"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-arm64/kisuke-cli-#{version}-linux-arm64.tar.gz"
      sha256 "74e92cb92bce9012f4b4e655f09fbfecd333feeae684547e8f306a490f9067ff"
    else
      url "https://download.kisuke.dev/connect/#{version}/cli/linux-x64/kisuke-cli-#{version}-linux-x64.tar.gz"
      sha256 "c5c6aae7f0dd1784f04e6c0b82064d387c277251458b93d017e3f860e83db978"
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
