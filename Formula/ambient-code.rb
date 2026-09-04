class AmbientCode < Formula
  desc "Terminal coding agent for the Ambient decentralized-inference network"
  homepage "https://github.com/Xinu7/ambient-cli"
  url "https://github.com/Xinu7/ambient-cli/releases/download/v0.1.0/ambient-code-0.1.0.tgz"
  sha256 "b5205a8cb4f3cba1735b5b2c97159b7531537d57624eddec95701cd76e76aa1b"
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
