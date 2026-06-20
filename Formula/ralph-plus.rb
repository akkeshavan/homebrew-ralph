class RalphPlus < Formula
  desc "Ralph Plus — agentic coding CLI with Brain memory system (experimental)"
  homepage "https://ralphy-server.fly.dev/ralph-plus"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f4fbee0fcc75c699baa5643955fc92169e24b9909eb6b7c13f487be28ae306fe"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8be5d21dbc2dc84ed8da808991070b86aad3d86e29b8049280227f7e83788c83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac688952a7e1d490b37e6e61762e6683d4d4cc5dfc60543341b8bcf9242e63b3"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/plus-v#{version}/ralph-plus-plus-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53946bce1025af0dfb9584d95255c36462e70208b83da876d907fdb6bf83505d"
    end
  end

  def install
    bin.install "ralph-plus"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph-plus --help 2>&1", 0)
  end
end
