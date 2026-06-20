class RalphPlus < Formula
  desc "Ralph Plus — agentic coding CLI with Brain memory system (experimental)"
  homepage "https://ralphy-server.fly.dev/ralph-plus"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "16918a11a7adeefe66d1ceaf34316a0921bc75072afe1ed874e0a59c20f66e20"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1331a7ac46255e3c7c880e7534d35c1ccab3fcb49706c43a0bd5c2a50f84512f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66992454fe8d1e612bcadf5e39d0481670fadf3434904de39bcc3e1dff0195b4"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a868e4c2139c125a3e8522a8606c7617787b717b901237f7e6cace860bea1344"
    end
  end

  def install
    bin.install "ralph-plus"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph-plus --help 2>&1", 0)
  end
end
