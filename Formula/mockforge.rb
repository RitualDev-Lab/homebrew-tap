require "language/node"

class Mockforge < Formula
  desc "Enterprise Intelligent Relational Mock DB & Synthetic Test Data Engine"
  homepage "https://ritualdev.in/mockforge"
  url "https://registry.npmjs.org/@ritualdev-lab/mockforge/-/mockforge-0.1.2.tgz"
  sha256 "b23b9ecd8b51d702767b3a870056c054ac2f602fe8408b97437a93ee17997332"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "mockforge", shell_output("#{bin}/mockforge --help")
  end
end
