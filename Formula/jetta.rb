class Jetta < Formula
  desc "Fast JWT CLI tool for decoding and inspecting JSON Web Tokens"
  homepage "https://github.com/Sam-Lane/jetta"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Sam-Lane/jetta/releases/download/v1.0.0/jetta_1.0.0_darwin_amd64.tar.gz"
      sha256 "b2500c2ab1fe2abd1ed46b495454671cacf0aab8b51db9a12b3179f82340c3b2"
    else
      url "https://github.com/Sam-Lane/jetta/releases/download/v1.0.0/jetta_1.0.0_darwin_arm64.tar.gz"
      sha256 "1cdbc8ac95159e3dbe24cb0d1b5e461b7b6b78f987231c37af5a6fa4b17d27ff"
    end
  end

  def install
    bin.install "jetta"
  end

  test do
    assert_match "Usage:", shell_output("\#{bin}/jetta --help")
  end
end
