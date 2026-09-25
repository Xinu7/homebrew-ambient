class AmbientCode < Formula
  desc "Terminal coding agent for the Ambient decentralized-inference network"
  homepage "https://github.com/Xinu7/ambient-cli"
  url "https://github.com/Xinu7/ambient-cli/releases/download/v0.9.0/ambient-code-0.9.0.tgz"
  sha256 "310388cc4ff49789ef784217e42cf6cca7bb7996d667a32d3cf4eb73b42a06d0"
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
