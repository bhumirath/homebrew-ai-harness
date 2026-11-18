class Harness < Formula
  desc "Local coding agent and always-on AI agent CLI"
  homepage "https://github.com/bhumirath/ai-harness-cli-project"
  url "https://github.com/bhumirath/ai-harness-cli-project/releases/download/v0.2.2/harness-0.2.2-darwin-arm64.tar.gz"
  sha256 "7f3d041d77bf205d303715df1f578913ae6a2fcac2d93374eb74b6af9a990d5a"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "harness-0.2.2-darwin-arm64" => "harness"
  end

  test do
    assert_equal "0.2.2", shell_output("#{bin}/harness --version").strip
  end
end
