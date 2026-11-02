require "language/node"

class Agentshield < Formula
  desc "Enterprise AI Agent Runtime Defense & Kernel Sandbox (Seatbelt/bwrap)"
  homepage "https://github.com/RitualDev-Lab/AgentShield"
  url "https://registry.npmjs.org/@ritualdev-lab/agentshield/-/agentshield-0.1.4.tgz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "agentshield", shell_output("#{bin}/agentshield --help")
  end
end
