# CIS-Sentinel-Automated-Auditing-for-Windows-Linux-Systems
The focus of this project is to develop an automated audit script tailored for Windows 11 (Enterprise and Standalone) and Linux operating systems (Red Hat Enterprise and Ubuntu) based on CIS benchmarks. By automating the audit process, organizations can ensure that their systems adhere to CIS security guidelines in an efficient and reliable manner.
Here’s a detailed `README.md` file for the **CIS Sentinel: Automated Auditing for Windows & Linux Systems** project:

# CIS Sentinel: Automated Auditing for Windows & Linux Systems

![CIS Sentinel Logo](https://example.com/logo.png) <!-- Replace with actual logo URL -->

## 🚀 Project Overview
**CIS Sentinel** is a cross-platform auditing tool, meticulously designed for **Windows 11** and **Linux** systems, built in adherence to the **Center for Internet Security (CIS) Benchmarks**. It automates system configuration checks to ensure compliance with industry-leading security best practices, delivering clear, actionable reports to safeguard your infrastructure.

---

## ✨ Key Features
- **Automated Audits**: Comprehensive system audits for Windows and Linux.
- **CIS Benchmark Compliance**: Ensures adherence to the latest CIS benchmarks.
- **Detailed Reports**: Easy-to-read reports, complete with recommendations.
- **Cross-Platform**: Support for Windows 11 and major Linux distributions.
- **Customizable Audits**: Modify audit parameters for specific organizational requirements.
- **Real-Time Alerts**: Instant feedback on system vulnerabilities.

---

## ⚙️ Tech Stack & Tools
- **PowerShell**: Auditing for Windows 11 systems.
- **Bash**: Auditing for Linux distributions.
- **Python**: Cross-platform reporting and automation.
- **CIS-CAT Pro Assessor**: (Optional) Advanced compliance integration.

---

## 📋 System Requirements

### Windows
- Windows 11
- PowerShell 5.1 or later
- Administrator privileges

### Linux
- Supported distributions: Ubuntu, CentOS, RHEL, Fedora
- Bash 4.0 or later
- Root privileges

### Additional Tools
- Python 3.x (for cross-platform operations)
- CIS-CAT Pro Assessor (optional)

---

## 📦 Installation Guide

1. **Clone the Repository**:
\\\bash
git clone [cis-sentinel](https://github.com/Aryan-136/CIS-Sentinel-Automated-Auditing-for-Windows-Linux-Systems/blob/main/README.md)
cd cis-sentinel
\\\

2. **Install Dependencies**:
   - **Windows**: Ensure the latest version of PowerShell is installed.
   - **Linux**:
\\\bash
sudo apt update && sudo apt install -y bash python3
\\\

3. **Configuration**:
   - Customize the `config.yml` file to modify audit checks based on specific requirements.

4. **Run the Audit**:
   - **Windows**:
\\\powershell
./audit_windows.ps1
\\\
   - **Linux**:
\\\bash
sudo ./audit_linux.sh
\\\

---

## 🛠️ Usage Instructions

1. **Perform an Audit**:
   - Run the script on your respective OS to begin the audit. Results will be saved in the `/reports` directory.

2. **View Reports**:
   - Audit reports are generated in both **text** and **HTML** formats for convenient review.

3. **Customization**:
   - Modify `config.yml` to enable/disable specific CIS benchmark rules based on your organization's security policies.

---

## 🔧 Customization Options

- **Audit Levels**:
  - **Level 1**: Basic security recommendations.
  - **Level 2**: Advanced security configurations.
  
- **Real-Time Notifications**:
  - Enable/disable notifications in `config.yml`.

- **Custom Scripts**:
  - Add your custom audit checks in the `/custom-scripts` directory.

---

## 📅 Roadmap

### Version 1.0.0:
- Initial release with core audit functionalities.

### Version 2.0.0:
- Integrate **CIS-CAT Pro Assessor** for enhanced audits.
- Add **multi-language** support for reports.

### Future Updates:
- **macOS** support.
- Integration with **cloud services** for remote auditing.

---

## 🤝 Contribution Guidelines

We welcome contributions! Here's how you can get involved:

1. Fork the repository.
2. Create a new feature branch: \`git checkout -b feature-branch-name\`
3. Commit your changes: \`git commit -m 'Add a new feature'\`
4. Push the branch: \`git push origin feature-branch-name\`
5. Open a pull request.

---
## 中文简介
CIS-Sentinel 是一款基于CIS安全基准的自动化主机审计工具，支持 Windows 11、Ubuntu、RHEL系统。
脚本自动检查主机安全配置，输出合规审计报告，帮助运维/安全人员快速发现系统安全基线漏洞。

## 运行依赖
### Windows
- PowerShell 5.1 / PowerShell 7
- 需要管理员权限运行

### Linux
- Bash shell
- 用户需要拥有sudo管理员权限

## 快速启动
### Windows
1. 右键开始菜单，选择【Windows PowerShell(管理员)】
2. 进入脚本所在文件夹
```powershell
.\cis_audit_windows.ps1
```
### Linux (Ubuntu / RHEL)
1.打开终端（Terminal）
2.进入项目文件夹
```bash
cd CIS-Sentinel-Automated-Auditing-for-Windows-Linux-Systems
sudo bash cis_audit_linux.sh
```


## 📌 Linux审计脚本新增功能
新增CIS基线审计模块：
1. SSH Root登录权限检测，检查是否允许root通过SSH远程登录
2. 用户密码最长有效期检测，识别密码永不过期等不合规配置

### 📷 运行输出示例
![Linux审计运行截图](https://github.com/BayGhmet/CIS-Sentinel-Automated-Auditing-for-Windows-Linux-Systems/blob/main/linux_audit_result.png)

> 说明：截图为Ubuntu虚拟机执行审计脚本输出，标记出系统不符合CIS安全基线的风险项。



## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](./LICENSE) file for full details.

---

## 💬 Get In Touch

If you have any questions, suggestions, or encounter issues, feel free to reach out by opening an issue or contacting us at [pandyaaryanp348@gmail.com](pandyaaryanp348@gmail.com).

---

**Developed by Aryan Pandya And Team**  
🔗 Connect with us on [LinkedIn](https://www.linkedin.com/in/aryanpandya/) EOF
