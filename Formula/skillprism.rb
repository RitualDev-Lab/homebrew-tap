require "language/node"

class Skillprism < Formula
  desc "Intelligent Tool Search & Context Optimizer for AI Agents"
  homepage "https://github.com/RitualDev-Lab/SkillPrism"
  url "https://registry.npmjs.org/@ritualdev-lab/skillprism/-/skillprism-1.2.4.tgz"
  sha256 "8357bdad7da6c160e658208f58218a1303bdbe34488e7878b6324f7a0bc35d31"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "skillprism", shell_output("#{bin}/skillprism --help")
  end
end
