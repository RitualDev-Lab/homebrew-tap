require "language/node"

class Agentshield < Formula
  desc "Enterprise Zero-Leak Secret Defense & Kernel Sandbox for Autonomous AI Coding Agents"
  homepage "https://ritualdev.in/agentshield"
  url "https://registry.npmjs.org/@ritualdev-lab/agentshield/-/agentshield-0.2.2.tgz"
  sha256 "857a21e9d114278d38cda141f2e3ee04eac90fa2cfada88812aa9d8b676cb446"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/agentshield --version")
  end
end
