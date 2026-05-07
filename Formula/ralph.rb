class Ralph < Formula
  desc "Agentic code generation CLI powered by DeepSeek"
  homepage "https://akkeshavan.github.io/ralph-releases/"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e817a2a0b6352974137310e5058097f14b149193ceb2a6de7e1c9106dff80cc3"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "92b687e20536cd283db090441c2cd33776f5156a9fa1efdf40b70f22ce0acaf3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a01c98a832b94e0eb0aed5951af6023530eac5cf98af7bded7b720ba53e2285"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d00f84451d9264dbd2820a98a07558f75ccf2529adcce3ac0ec490ce8fa1867"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
