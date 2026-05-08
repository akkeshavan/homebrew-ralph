class Ralph < Formula
  desc "Agentic code generation CLI powered by DeepSeek"
  homepage "https://akkeshavan.github.io/ralph-releases/"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c4a4965126b372cfafa3fd49df8248863b8a9ecfc31d2802f6545d140850f211"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b4196bba4d23df6b573253a5c0d8d833bc902f76c07a05e127c6d78a6f691b65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c97e1429ef525b605f0a78a451db90d992be46a14122ac4de48fca36f371a667"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1e5854f567a1338413f30bba97a55149d6d16efc4d8444f104625783df375c2"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
