class AmbientCode < Formula
  desc "Terminal coding agent for the Ambient decentralized-inference network"
  homepage "https://github.com/Xinu7/ambient-cli"
  url "https://github.com/Xinu7/ambient-cli/releases/download/v0.11.0/ambient-code-0.11.0.tgz"
  sha256 "3eaececabfc0715c088b46cf9a8c4768be0b0808012c3716668a34fccaebf255"
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
