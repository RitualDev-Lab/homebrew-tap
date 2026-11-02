require "language/node"

class Dbshield < Formula
  desc "Database Guardrail, Sandboxing Wire Proxy & Virtual Schema RBAC"
  homepage "https://github.com/RitualDev-Lab/DBShield"
  url "https://registry.npmjs.org/@ritualdev-lab/dbshield/-/dbshield-0.2.0.tgz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  service do
    run [opt_bin/"dbshield", "proxy", "--port", "5433"]
    keep_alive true
    working_dir var
    log_path var/"log/dbshield.log"
    error_log_path var/"log/dbshield.error.log"
  end

  test do
    assert_match "dbshield", shell_output("#{bin}/dbshield --help")
  end
end
