class Ralph < Formula
  desc "Agentic code generation CLI powered by multiple LLM backends"
  homepage "https://github.com/akkeshavan/ralph"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph/releases/download/v#{version}/ralph-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1b6e485395140ed6e009dff7d5a06a5f501c1e1113ab3ea8a71f18b8e05127ad"
    else
      url "https://github.com/akkeshavan/ralph/releases/download/v#{version}/ralph-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b41cdcb0cdb2cb95a189acad49213294a422972dcdbb7fb7fe3fdf0512f7b517"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akkeshavan/ralph/releases/download/v#{version}/ralph-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7aedead458ca9916d116c6533a541a2343bf8a5b41fc434d2d357d5b053554bd"
    else
      url "https://github.com/akkeshavan/ralph/releases/download/v#{version}/ralph-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbf95a1f4af90babcd6f07eda01858b0e477ea6ea81519cc79da4dbe48d471c1"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help 2>&1", 0)
  end
end
