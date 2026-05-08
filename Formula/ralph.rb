class Ralph < Formula
  desc "Agentic coding CLI — managed via Ralphy backend or bring your own API key"
  homepage "https://ralphy.vellur.in/download"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f030d97a988cab952f6846a26cda0057cfb6a887557539a29285a4d24c00af68"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "19d15032cdef11288718a677d1a4154518bd279eef7d84e05e57d86f44ba78f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13289e30d41a9954288c288dc6e98568ff5bcdf33fd43e4437ca28b0c4cf63c1"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9719dc5828eb10fc8daf7c69036137677555eeca832b52ac0c30d6c8bc9a21a7"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
