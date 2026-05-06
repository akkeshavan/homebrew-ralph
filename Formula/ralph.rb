class Ralph < Formula
  desc "Agentic code generation CLI powered by DeepSeek"
  homepage "https://akkeshavan.github.io/ralph-releases/"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cd987d267f170cb6c1642251c456c492b0456f90b1e8339b2873a1c91498f4d9"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "aa0d8355fdc0be6d0f28acb56f56a43adeffef9a5725977bddce23579a4b2728"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f965e7576e688cfdf2ade4b0ee631de1b17a256d382b84718257827831504c49"
    else
      url "https://github.com/akkeshavan/ralph-releases/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f1338a8e50b292b487b0907f9d86b989057adef8020c449500226cd1d206db3"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
