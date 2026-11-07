require "language/node"

class Mockforge < Formula
  desc "Enterprise Intelligent Relational Mock DB & Synthetic Test Data Engine"
  homepage "https://ritualdev.in/mockforge"
  url "https://github.com/RitualDev-Lab/MockForge/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "267b08ceace1a14c5a893811e8786ef04130ba7b3932d7a6b47eef3b55f132ef"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "mockforge", shell_output("#{bin}/mockforge --help")
  end
end
