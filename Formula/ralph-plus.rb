class RalphPlus < Formula
  desc "Ralph Plus — agentic coding CLI with Brain memory system (experimental)"
  homepage "https://ralphy-server.fly.dev/ralph-plus"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "04c5f099eeb8c4d73e198a77c82281032b62142345e70a91f66cd612a297ff5b"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "00b727ab8eea9e93c23fb7677e017be675f3d7f1a81c4fe1406a9f9286e2c340"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e67123343b95d1785f1dfdaab8f10efcfd83e8e8dfb3aaa2cb8378deed396777"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77b1a32076603b422f8e8162122f8b6574a71e1dac1ee385a9e280595beb05e1"
    end
  end

  def install
    bin.install "ralph-plus"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph-plus --help 2>&1", 0)
  end
end
