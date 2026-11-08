require "language/node"

class McpMonetize < Formula
  desc "Drop-in Billing & Capability Token Engine for Model Context Protocol (MCP) Servers"
  homepage "https://ritualdev.in"
  url "https://github.com/RitualDev-Lab/mcp-monetize/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1357f447ab077a9fb9f2a4c1146487fd9e0269e2dd0d3e080cc01f52801db8be"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    system "npm", "run", "build"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/mcp-monetize --version")
  end
end
