class RalphPlus < Formula
  desc "Ralph Plus — agentic coding CLI with Brain memory system (experimental)"
  homepage "https://ralphy-server.fly.dev/ralph-plus"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2d07d092f292effe9c620cd53efbfe0b027930889a10cb87be26c1ff2fecdffb"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "45fcdfbf0958f1cb87afcdeb2b2f7f99e93c797e21f7045a17b78f44d5be6bef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c7bdc20dedcd3d8dc8c56c84e59ffffff778c0f9023bbed1d0a668d99204355b"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70f5a3951c2deb63312862b546265ee700ac82f74d73f9b90cec6e96e83332d1"
    end
  end

  def install
    bin.install "ralph-plus"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph-plus --help 2>&1", 0)
  end
end
