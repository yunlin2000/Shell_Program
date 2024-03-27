#! /bin/bash
# 显示菜单
cat << END
1.[Install Lamp]
2.[Install Lnmp]
3.[Exit]
END
# 接受用户选择
read -p "Pls select a number[1|2|3]:" num

# 进行用户输入检测，是否为数字,不为数字退出，返回1

expr $num + 1 &>/dev/null
[ "$?" -ne "0" ] && {
	echo "你输入的不正确，你必须选择【1|2|3】。"
	exit 1

}
# 如果输入的1，则进行安装程序lamp.sh检测和运行安装

[ "$num" -eq "1" ] && {
	# echo ~/Shell_Program/lamp_or_lnmp/lamp.sh
	[ -f ~/Shell_Program/lamp_or_lnmp/lamp.sh ] && {
		echo "Install lamp....wait......"
		sleep 2;
		bash ~/Shell_Program/lamp_or_lnmp/lamp.sh

	} || {
		echo "lamp.sh安装程序不存在或不可执行！"
		exit 1
	}
}

# 如果输入的2，进行安装程序lnmp.sh的检测和执行
[ "$num" -eq "2" ] && {

	[ -f ~/Shell_Program/lamp_or_lnmp/lnmp.sh ] && {
		echo "Install lnmp...wait...."
		sleep 2;
		bash ~/Shell_Program/lamp_or_lnmp/lnmp.sh
	} || {
		echo "lnmp.sh安装程序不存在或不可执行！"
		exit 1
	}
}
# 如果输入的3，则退出
[ "$num" -eq "3" ] && {
	echo "byebye!"
	exit 0
}
[[ ! "$num" =~ [1-3]  ]] && {
	echo "你必须输入【1|2|3】！"
	exit 1
}

