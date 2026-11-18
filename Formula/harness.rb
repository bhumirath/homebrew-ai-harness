class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.2.8/harness-0.2.8-darwin-arm64.tar.gz"
  sha256 "694c568387a3e552b86c9867ded7b61a103e2452507a82f032fbcf63c6788645"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.2.8-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.2.8", shell_output("#{bin}/harness --version").strip
  end
end
