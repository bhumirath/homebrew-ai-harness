class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.2.6/harness-0.2.6-darwin-arm64.tar.gz"
  sha256 "42edcbc668d10750df1d20d92880085b008afa4a2ca60e307835acff8a63c36d"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.2.6-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.2.6", shell_output("#{bin}/harness --version").strip
  end
end
