class Ralph < Formula
  desc "Agentic coding CLI — managed via Ralphy backend or bring your own API key"
  homepage "https://ralphy.vellur.in/download"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9006f72248367b51d0c4aaabe70231b7373d9504de621a4b0916e6ebc8d50cfc"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5b7288d5000c3f0c61ed42461a6a57928a25ffaf880dcc7c3e99f112e0982d17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb31512f15d987c5588bc5f072b13c1e48171642b71ab58a9689a2c622b9faca"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4e0ceaa7fbeec12f95aeee088dbd3c66c1016bbaf0df2efa0da96f39d30c330"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
