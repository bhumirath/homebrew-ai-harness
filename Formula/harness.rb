class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.2.3/harness-0.2.3-darwin-arm64.tar.gz"
  sha256 "293c7dd9e3295657bfcb73a85c579803f76f16afeba1cfa9396f4432bb11076b"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.2.3-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.2.3", shell_output("#{bin}/harness --version").strip
  end
end
