class AmbientCode < Formula
  desc "Terminal coding agent for the Ambient decentralized-inference network"
  homepage "https://github.com/Xinu7/ambient-cli"
  url "https://github.com/Xinu7/ambient-cli/releases/download/v0.8.0/ambient-code-0.8.0.tgz"
  sha256 "b1edbe964d483404a3f9129a60b1b7d7ac18835e758857bd513ca642e85af2f4"
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
