require "language/node"

class Fineprint < Formula
  desc "Enterprise In-Memory Contract, Lease & NDA Scanner ($0 Cost Stack)"
  homepage "https://ritualdev.in/fineprint"
  url "https://registry.npmjs.org/@ritualdev-lab/fineprint/-/fineprint-0.1.3.tgz"
  sha256 "e0532a800a185eb04e025f97cd42788737caf646ed826cfea93749f8b544fd91"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "fineprint", shell_output("#{bin}/fineprint --help")
  end
end
