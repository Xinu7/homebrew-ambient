class AmbientCode < Formula
  desc "Terminal coding agent for the Ambient decentralized-inference network"
  homepage "https://github.com/Xinu7/ambient-cli"
  url "https://github.com/Xinu7/ambient-cli/releases/download/v0.5.0/ambient-code-0.5.0.tgz"
  sha256 "6aff7523573495b9b24609bbb93b123ea672721df9e66601f1b07447272ce9e0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "ambient", shell_output("#{bin}/ambient --version")
  end
end
