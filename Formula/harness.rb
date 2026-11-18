class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.2.0/harness-0.2.0-darwin-arm64.tar.gz"
  sha256 "6402cc26ee36e6db64ced93da0b2a15332ae91c0d3ec98454bac76ce8a7538ce"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.2.0-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.2.0", shell_output("#{bin}/harness --version").strip
  end
end
