# 🍺 RitualDev Lab Homebrew Tap

Official Homebrew tap for the RitualDev-Lab AI agent defense, sandboxing, and governance suite.

## 🚀 Installation

Add this tap to your local Homebrew:

```bash
brew tap ritualdev-lab/tap
```

### Install CLI Tools:

```bash
# Enterprise AI DLP & Secret Firewall CLI
brew install promptshield

# Database Guardrail, Sandboxing Wire Proxy & Virtual Schema RBAC
brew install dbshield

# Intelligent Relational Mock DB & Synthetic Test Data Engine
brew install mockforge

# In-Memory Contract, Lease & NDA Scanner
brew install fineprint

# AI Agent Runtime Defense & Kernel Sandbox (Seatbelt on macOS)
brew install agentshield

# Intelligent Tool Search & Context Optimizer
brew install skillprism

# DAST, SAST, SCA & AI Secret Hunter
brew install web-sec-auditor
```

### Install All Suite Tools:
```bash
brew install promptshield dbshield mockforge fineprint agentshield skillprism web-sec-auditor
```

### Run DBShield as a Background Daemon Service:
```bash
brew services start dbshield
# Wire proxy active on 127.0.0.1:5433 with automated PII masking and virtual schema sandboxing
```

## 📄 License
MIT © [RitualDev Lab](https://github.com/RitualDev-Lab)
