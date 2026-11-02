require "language/node"

class Skillprism < Formula
  desc "Intelligent Tool Search & Context Optimizer for AI Agents"
  homepage "https://github.com/RitualDev-Lab/SkillPrism"
  url "https://registry.npmjs.org/@ritualdev-lab/skillprism/-/skillprism-1.2.3.tgz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
