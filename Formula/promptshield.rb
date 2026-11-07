require "language/node"

class Promptshield < Formula
  desc "Enterprise AI Data Loss Prevention (DLP) & Prompt Firewall CLI"
  homepage "https://ritualdev.in/promptshield"
  url "https://github.com/RitualDev-Lab/PromptShield/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "49b5b2077dddaf0a234a5f848480276398b3bf3f563bbf1b05ae83b1c243ded9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "promptshield", shell_output("#{bin}/promptshield --help")
  end
end
