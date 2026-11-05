require "language/node"

class Agentshield < Formula
  desc "Enterprise Zero-Leak Secret Defense & Kernel Sandbox for Autonomous AI Coding Agents"
  homepage "https://ritualdev.in/agentshield"
  url "https://registry.npmjs.org/@ritualdev-lab/agentshield/-/agentshield-0.2.1.tgz"
  sha256 "ca24514b43de1133987144cbd85327834af4b725f9ce40abee27028db48f7b34"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/agentshield --version")
  end
end
