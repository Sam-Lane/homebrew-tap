class Cacc < Formula
  desc "Switch between multiple Claude Code accounts"
  homepage "https://github.com/Sam-Lane/cacc"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sam-Lane/cacc/releases/download/v0.1.0/cacc_0.1.0_darwin_arm64.tar.gz"
      sha256 "1610c54e22099915b807199281f930fa779a933c3caf37af91f4212ed367c12d"
    else
      url "https://github.com/Sam-Lane/cacc/releases/download/v0.1.0/cacc_0.1.0_darwin_amd64.tar.gz"
      sha256 "811947120b296d213d695850373f976410aa25fdca5d3ce44e578e9a87b60602"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Sam-Lane/cacc/releases/download/v0.1.0/cacc_0.1.0_linux_arm64.tar.gz"
      sha256 "8049e3f4479d612bafd61883c5a95542306879612ea17345bb91ce737c1fd95f"
    else
      url "https://github.com/Sam-Lane/cacc/releases/download/v0.1.0/cacc_0.1.0_linux_amd64.tar.gz"
      sha256 "e18acae528aeaaef1443eb2af1c2e5c52b9bd4a9014c84da301cbf5fcb0d3141"
    end
  end

  def install
    bin.install "cacc"
  end

  test do
    assert_match "Claude accounts", shell_output("#{bin}/cacc --help")
  end
end
