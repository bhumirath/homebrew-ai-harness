class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.2.9/harness-0.2.9-darwin-arm64.tar.gz"
  sha256 "50abe1cbdf3223ea6a849030fbebd741adc7e0fee94935a46ee4fd25246f5c59"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.2.9-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.2.9", shell_output("#{bin}/harness --version").strip
  end
end
