class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.2.1/harness-0.2.1-darwin-arm64.tar.gz"
  sha256 "1d9fdb944a7bbb67e13a36e9ca77a53e5fa8dc88f22aabbda3a91ccb520db62a"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.2.1-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.2.1", shell_output("#{bin}/harness --version").strip
  end
end
