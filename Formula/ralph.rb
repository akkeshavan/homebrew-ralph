class Ralph < Formula
  desc "Agentic coding CLI — managed via Ralphy backend or bring your own API key"
  homepage "https://ralphy.vellur.in/download"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3afa828ea5797c3a4be5f0f65f76c1815010aaed14d931c8fbcd06c8efa80a97"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "10741724c60dc9251db2a78dde4253c4e1f0e52fb775b391fc693d8996e5b5bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc8cf9d75ff8f2f07d7c8d3c994296532e574eda75b7e6d7063edc8b655a36d0"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7a8b128bfd41587b8ca68a6591acf41b21377cd35413ae3952582beabcbcf65"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
