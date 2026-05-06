class Ralph < Formula
  desc "Agentic code generation CLI powered by DeepSeek"
  homepage "https://akkeshavan.github.io/ralph-releases/"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "335e99ebb6c404c97a4cbaa5bed7257d225a02d65c9859b3aa374bf68b3c5671"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fbdb28872d6f4dc06c449cbb9213bb655d13fbfb032ce7887db8f2fb8664c29d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa8a51140241962df722f04b8eaec1cb1daf87ed0feafd740d3fc08dc5b56cab"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df36efefe9b04fe5f006426609fdfbb2db793d72780c33bbb8a7a3d167872b5d"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
