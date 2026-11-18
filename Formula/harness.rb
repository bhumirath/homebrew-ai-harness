class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.3.0/harness-0.3.0-darwin-arm64.tar.gz"
  sha256 "f3b8fff3f4f45a36f9321dc8bc9199cf5e0fa7954c9449e75bc2e7ec320ac1cf"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.3.0-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.3.0", shell_output("#{bin}/harness --version").strip
  end
end
