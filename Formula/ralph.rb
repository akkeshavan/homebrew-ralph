class Ralph < Formula
  desc "Agentic coding CLI — managed via Ralphy backend or bring your own API key"
  homepage "https://ralphy.vellur.in/download"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "136b2a0bcdfe5685ed77aed6462083681cc4236efc2530e7c75fdb458cf74656"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ce117f23c303ac896dbcc307f5c1c7f4bb8d97a221567d258970c171aaf64ef2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57ecb5b345174a1553f94896bbedc1b10397ff9aa612b65f782d2ada7f74cda7"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7bc0273f5c86353f51ace1cd3259821b3b743fe7eb07919c82b678a375f22de7"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
