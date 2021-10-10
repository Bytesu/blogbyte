screen
===
screen简要说明

screen 会话命令可以保持本地和服务器断开后，程序继续在服务器上运行，并且运行结束后，输出最后的结果。功能结果相当于 nohup command &，但是功能远比nohup强大

1、安装screen
yum install -y screen （centos下安装）

2、参数说明
-A 　将所有的视窗都调整为目前终端机的大小。
-d     <作业名称> 　将指定的screen作业离线。
-h     <行数> 　指定视窗的缓冲区行数。
-m 　即使目前已在作业中的screen作业，仍强制建立新的screen作业。
-r      <作业名称> 　恢复离线的screen作业。
-R 　先试图恢复离线的作业。若找不到离线的作业，即建立新的screen作业。
-s 　指定建立新视窗时，所要执行的shell。
-S    <作业名称> 　指定screen作业的名称。
-v 　显示版本信息。
-x 　恢复之前离线的screen作业。
-ls或--list 　显示目前所有的screen作业。
-wipe 　检查目前所有的screen作业，并删除已经无法使用的screen作业。

3、常用screen参数
screen -S session_name           # 新建一个叫session_name的session
screen -ls（或者screen -list）   # 列出当前所有的session
screen -r session_name            # 回到session_name这个session
screen -d session_name           # 远程detach某个session
screen -d -r session_name        # 结束当前session并回到session_name这个session

4、在每个screen session 下，命令都以 ctrl+a、ctrl-a，常用的几个操作如下：
ctrl-a x   # 锁住当前的shell window，需用用户密码解锁
ctrl-a d   # detach，暂时离开当前session，将当前 screen session 转到后台执行，并会返回没进 screen 时的状态，此时在 screen session 里，每个shell client内运行的 process (无论是前台/后台)都在继续执行，即使 logout 也不影响
ctrl-a z   # 把当前session放到后台执行，用 shell 的 fg 命令则可回去。

5、其他说明

如果在执行 screen -r pts-0.localhost提示下面信息，无法跳到pts-0.localhost这个会话



此时请先执行 screen -d pts-0.localhost,再执行screen -r pts-0.localhost，即可跳到pts-0.localhost这个会话（即先detach，再连接）

如果要退出一个screen会话，先进入这个会话后，执行exit即可