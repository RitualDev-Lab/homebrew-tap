# 🍺 RitualDev Lab Homebrew Tap

Official Homebrew tap for the RitualDev-Lab AI agent defense, sandboxing, and governance suite.

## 🚀 Installation

Add this tap to your local Homebrew:

```bash
brew tap ritualdev-lab/tap
```

### Install CLI Tools:

```bash
# AI Agent Runtime Defense & Kernel Sandbox (Seatbelt on macOS)
brew install agentshield

# Database Guardrail, Sandboxing Wire Proxy & PII Masking
brew install dbshield

# Intelligent Tool Search & Context Optimizer
brew install skillprism

# DAST, SAST, SCA & AI Secret Hunter
brew install web-sec-auditor
```

### Run DBShield as a Background Service:
```bash
brew services start dbshield
# Connect your AI agents to postgres://127.0.0.1:5433/production_db
```

## 📄 License
MIT © [RitualDev Lab](https://github.com/RitualDev-Lab)
