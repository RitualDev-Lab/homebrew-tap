require "language/node"

class Dbshield < Formula
  desc "Database Guardrail, Sandboxing Wire Proxy & Virtual Schema RBAC"
  homepage "https://ritualdev.in/dbshield/"
  url "https://github.com/RitualDev-Lab/DBShield/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "085107b513eb86e94b9defa972c1dc651b3a03941538b441266d005695351fd6"
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
