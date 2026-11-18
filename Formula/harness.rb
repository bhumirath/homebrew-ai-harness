class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.2.5/harness-0.2.5-darwin-arm64.tar.gz"
  sha256 "3ef7cdca4fbc16790f5f5f9db2f2532961f2b905b0d812a9d1aa8b4a609bb9ed"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.2.5-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.2.5", shell_output("#{bin}/harness --version").strip
  end
end
