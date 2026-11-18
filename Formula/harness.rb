class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.2.4/harness-0.2.4-darwin-arm64.tar.gz"
  sha256 "d64e46f8d5c95d11ed88bf9afbf6de8db250a1a27e5c97613ee74bf68907e05c"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.2.4-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.2.4", shell_output("#{bin}/harness --version").strip
  end
end
