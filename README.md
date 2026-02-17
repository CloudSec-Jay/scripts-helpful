 # Identity & Cloud Security Automation

![PowerShell](https://img.shields.io/badge/PowerShell-5.1%2B-5391FE?style=for-the-badge&logo=powershell&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Windows Server](https://img.shields.io/badge/Windows_Server-0078D4?style=for-the-badge&logo=windows&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-0078D4?style=for-the-badge&logo=microsoft-azure&logoColor=white)
![Active Directory](https://img.shields.io/badge/Active_Directory-0078D4?style=for-the-badge&logo=windows&logoColor=white)

**Private Portfolio Repository**

This repository represents my hands-on journey into enterprise identity and access management. As I build out my lab environment, I'm developing PowerShell and Bash automation that bridges traditional Active Directory with modern cloud identity through Azure and Entra ID. Every script here solves a real problem I encountered while learning how enterprises actually secure and manage user identities at scale.

## 🎯 What This Repository Covers

### 🔐 Identity & Access Management

The backbone of modern security is knowing who has access to what, and ensuring that access is appropriate. I'm building automation that handles the full identity lifecycle—from the moment a user account is created in on-premises AD, through synchronization to Entra ID, to eventual offboarding when someone leaves.

Key areas I'm working on:
- **Active Directory automation** - User provisioning, group management, and ensuring security groups follow least privilege principles
- **Entra ID integration** - Understanding how cloud identities work and how they sync with on-prem systems
- **Access auditing** - Scripts that identify who has admin rights, stale accounts, and permission creep
- **RBAC implementation** - Defining and assigning Azure roles that match actual job functions without over-permissioning

### 🖥️ Windows Server & Active Directory

Active Directory is still the foundation of most enterprise networks, even as organizations move to the cloud. I'm learning how to properly configure and secure Windows Server environments, with a focus on the identity services that everything else depends on.

What I'm building:
- **Core infrastructure roles** - Automated deployment and hardening of DNS, DHCP, and other foundational services
- **AD security posture** - Scripts to identify weak configurations, legacy protocols that should be disabled, and GPO inconsistencies
- **Hybrid sync health** - Monitoring tools to ensure Entra Connect is working properly and identities aren't orphaned between environments
- **Domain controller hardening** - Implementing security baselines that protect the keys to the kingdom

### 💻 Workstation & Development Environment

Security starts at the endpoint. If an attacker compromises a workstation with cached credentials or excessive local admin rights, they can pivot through the entire network. I'm developing scripts that lock down Windows workstations and set up secure development environments.

Current automation:
- **Windows baseline configurations** - Disabling legacy protocols, enforcing BitLocker, and setting password policies that actually make sense
- **WSL environment deployment** - One-command setup for Ubuntu WSL with security tools pre-configured for testing and learning
- **Local privilege management** - Controlling who has admin rights and ensuring those privileges are temporary when needed
- **Security monitoring** - Enabling proper logging so suspicious activity on endpoints gets captured

## 📚 What I'm Learning Right Now

![Status](https://img.shields.io/badge/Status-Active_Learning-success?style=flat-square)
![Focus](https://img.shields.io/badge/Focus-IAM_%26_Security-blue?style=flat-square)
![Lab](https://img.shields.io/badge/Environment-Home_Lab-orange?style=flat-square)

My current focus is on understanding how identity flows through a hybrid environment. Specifically:

- **Entra ID architecture** - How Conditional Access policies work, what happens during authentication, and how to properly implement MFA without creating user friction
- **Zero Trust principles** - Moving from "trust but verify" to "never trust, always verify" in practical terms
- **PowerShell for IAM** - Building modules that interact with Microsoft Graph API, manage Azure resources, and automate complex multi-step workflows
- **Attack patterns** - Understanding how attackers abuse identity systems (credential stuffing, pass-the-hash, privilege escalation) so I can build defenses that actually work

The goal is to reach a point where I can walk into any organization and quickly understand their identity architecture, spot the security gaps, and build automation to close them.

## 💡 Philosophy

**Automation isn't just about saving time—it's about security.**

When you configure settings manually through a GUI, you introduce inconsistency. One server gets hardened, another doesn't. One user gets provisioned correctly, another ends up with too many permissions. These gaps are exactly what attackers exploit.

By scripting everything, I ensure:
- **Repeatability** - The same secure configuration every single time
- **Auditability** - Everything is in code, so you can see exactly what changed and when
- **Scalability** - What works for 10 users works for 1,000 users
- **Documentation** - The script itself becomes the documentation for how the environment is configured

I'm treating my lab like a production environment because that's how you build good habits. Every script includes error handling, logging, and follows PowerShell best practices.

---

## 📬 Note

This is a working learning repository. Scripts are tested in my lab environment and evolve as I gain deeper understanding of enterprise identity and security practices.

*For technical discussion or code review, I'm happy to walk through specific implementations.*
