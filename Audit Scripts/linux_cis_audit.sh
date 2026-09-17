#!/bin/bash
echo "==== CIS 安全审计：SSH Root登录检测 ===="
SSH_CONFIG="/etc/ssh/sshd_config"


result=$(grep -E "^PermitRootLogin" $SSH_CONFIG)

if [[ -z $result ]];then
	echo "[警告] 未找到PermitRootLogin配置,默认允许root登录，不符合CIS基线"
elif [[ $result == "PermitRootLogin no" ]]; then
	echo "[通过] SSH 已禁止root直接登录，符合CIS安全规范"
else
	echo "[不通过]SSH允许root登录，存在安全风险！配置:$result"
fi
