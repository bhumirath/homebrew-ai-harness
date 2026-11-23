class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.3.3/harness-0.3.3-darwin-arm64"
  sha256 "c9d5fb699554a9ae7f1555788631403a8927a849eeb8a21540fa8103ac7d6661"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.3.3-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.3.3", shell_output("#{bin}/harness --version").strip
  end
end
