require "language/node"

class Fineprint < Formula
  desc "Enterprise In-Memory Contract, Lease & NDA Scanner with Gemini 1.5 Flash"
  homepage "https://ritualdev.in/fineprint"
  url "https://github.com/RitualDev-Lab/FinePrintAI/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "96cdd6a1551205eff5e3514a1caaf080627fbe5124e5e1673543f84ebeed8e3a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "fineprint", shell_output("#{bin}/fineprint --help")
  end
end
