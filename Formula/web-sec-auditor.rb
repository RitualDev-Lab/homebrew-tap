require "language/node"

class WebSecAuditor < Formula
  desc "Enterprise DAST, SAST, SCA & AI Secret Hunter with Automated Git Auto-Patches"
  homepage "https://github.com/RitualDev-Lab/web-sec-auditor"
  url "https://registry.npmjs.org/@ritualdev-lab/web-sec-auditor/-/web-sec-auditor-1.1.0.tgz"
  sha256 "e34fe9ae3c818ecf0f14f7095019b5ced13d9ae1754209d96918a5327b914c75"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "web-sec-auditor", shell_output("#{bin}/web-sec-auditor --help")
  end
end
