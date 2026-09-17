#!/bin/bash
echo "===== CIS 安全审计：SSH Root登录检测 ====="
# 检查SSH的PermitRootLogin配置
SSH_CONFIG="/etc/ssh/sshd_config"
result=$(grep -E '^PermitRootLogin' $SSH_CONFIG)

if [ -z "$result" ];then
    echo "[警告] 未找到PermitRootLogin配置,默认允许root登录，不符合CIS基线"
elif [[ $result == *"no"* ]];then
    echo "[合规] PermitRootLogin 已关闭rootSSH登录，符合CIS基线"
else
    echo "[警告] PermitRootLogin允许root登录，不符合CIS基线"
fi

echo -e "\n===== CIS 安全审计：用户密码最长有效期检测 ====="
# CIS基线要求密码最长有效期 ≤90天
MAX_DAY=90
# 只检查普通用户，排除系统内置用户
users=$(grep '/bin/bash' /etc/passwd | cut -d: -f1)
for user in $users
do
    # 获取用户密码有效期
    max_days=$(chage -l $user | grep "Maximum number of days" | cut -d: -f2 | xargs)
    if [ "$max_days" = "never" ] || [ -z "$max_days" ];then
        echo "[警告] 用户 $user 密码永不过期，违反CIS基线（要求最长90天）"
    elif [ "$max_days" -gt $MAX_DAY ];then
        echo "[警告] 用户 $user 密码最长有效期：$max_days 天，超过CIS规定90天上限"
    else
        echo "[合规] 用户 $user 密码最长有效期：$max_days 天，符合CIS基线"
    fi
done
