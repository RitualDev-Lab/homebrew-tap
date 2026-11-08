require "language/node"

class Devshelf < Formula
  desc "Terminal Search Engine & Directory for 575+ Verified AI Developer Tools & MCP Servers"
  homepage "https://ritualdev.in/devshelf"
  url "https://registry.npmjs.org/@ritualdev-lab/devshelf/-/devshelf-1.1.2.tgz"
  sha256 "c9fd7e2a35f797e5b2eb108bbeea941cd5808746c08aa6e019f207b4330a1c7e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "devshelf", shell_output("#{bin}/devshelf --help")
  end
end
