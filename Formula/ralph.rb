class Ralph < Formula
  desc "Agentic coding CLI — managed via Ralphy backend or bring your own API key"
  homepage "https://ralphy.vellur.in/download"
  version "0.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bb933195df13b69e03d929adfb73e0b8b9ac74e3180b5afdea5d4eb828165950"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bba01eff9b9e304f64fcfe1f90f1a76e564a1cc41b77b89f57324b845c738b4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc8d7a8add97284440944b0aafbd2cb4d57d0cc3e23eaf8d87bf6a307a7a43d8"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7181f9221ceb1bfbfae26c67d1de1fce428ec86302a0fd27a1617b05409bb0b4"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
