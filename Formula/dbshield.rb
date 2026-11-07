require "language/node"

class Dbshield < Formula
  desc "Database Guardrail, Sandboxing Wire Proxy & Virtual Schema RBAC"
  homepage "https://ritualdev.in/dbshield"
  url "https://github.com/RitualDev-Lab/DBShield/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "820e4b07b53a416a44eb9f12e8c4cdbc79d908eb7b37beddaecc6e7541a44f87"
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
