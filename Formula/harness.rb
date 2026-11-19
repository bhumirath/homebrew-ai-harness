class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.3.1/harness-0.3.1-darwin-arm64.tar.gz"
  sha256 "e9bfc18293065f96ff8d80d88660cee76d923b6b381d7da575a4978d20fa9e1b"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.3.1-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.3.1", shell_output("#{bin}/harness --version").strip
  end
end
