class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.3.4/harness-0.3.4-darwin-arm64"
  sha256 "a46f54fbc826e7416dee77f3c956d6909007a6bebfa1d69f5e6db510836bbd4b"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.3.4-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.3.4", shell_output("#{bin}/harness --version").strip
  end
end
