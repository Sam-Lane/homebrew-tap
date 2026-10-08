class Cacc < Formula
  desc "Switch between multiple Claude Code accounts"
  homepage "https://github.com/Sam-Lane/cacc"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sam-Lane/cacc/releases/download/v0.2.0/cacc_0.2.0_darwin_arm64.tar.gz"
      sha256 "f6195c187a45f9f7f9e971c0aec1c3e3b41ab08a08ecb912013044fe9ba8e533"
    else
      url "https://github.com/Sam-Lane/cacc/releases/download/v0.2.0/cacc_0.2.0_darwin_amd64.tar.gz"
      sha256 "fe9c9745aada8e3e436f35f0979b1eb7e40f0779cd5c82d12bec5036b234df3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Sam-Lane/cacc/releases/download/v0.2.0/cacc_0.2.0_linux_arm64.tar.gz"
      sha256 "9749709af2bae321afa1c4183d7e3d221c95c531b8c6763396aa9fbb25285396"
    else
      url "https://github.com/Sam-Lane/cacc/releases/download/v0.2.0/cacc_0.2.0_linux_amd64.tar.gz"
      sha256 "a7d4211e93930406ba8fd2aef48472bbd6151772dffc8b19b6c2acd45b01570a"
    end
  end

  def install
    bin.install "cacc"
  end

  test do
    assert_match "Claude accounts", shell_output("#{bin}/cacc --help")
  end
end
