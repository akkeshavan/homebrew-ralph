class Ralph < Formula
  desc "Agentic code generation CLI powered by DeepSeek"
  homepage "https://akkeshavan.github.io/ralph-releases/"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "270b0d0a8c9b34bdb1e5f22503a70f1789fcd2e13d9c934ad5fcc47cc750697c"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "89faf7e7bd75cf29b09db804e8c0645262a46f55bdc796f201fed8abed5ad321"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d51af50518fffdb380128f835da2d5cb8378f9fb492ea8dd8e7b50092ab6d923"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e00802a7d3e7fccb1a0a6587cdc421117df4193b12ecc620977552e1167de44"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
