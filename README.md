# kanboardonreplit
在Replit部署kanboard看板并使用postgresql数据库

https://github.com/kanboard/kanboard

个人版（不推荐）：

<a href="https://repl.it/github/valetzx/kanboardonreplit">
  <img alt="Run on Repl.it" src="https://repl.it/badge/github/valetzx/kanboardonreplit" style="height: 40px; width: 190px;" />
</a>

教育版：

将以下代码粘贴至Replit Shell后回车

`git clone https://github.com/valetzx/kanboardonreplit && mv -b kanboardonreplit/* ./ && mv -b kanboardonreplit/.[^.]* ./ && rm -rf *~ && rm -rf kanboardonreplit`

当加载完 Loading Nix environment... 后点击绿色 ▶ Run

在运行完成的网页中 出现类似这样的 `Internal Error: SQLSTATE[08006] [7] FATAL: role "admin" does not exist` 报错后 

点击Shell 在终端中逐行输入以下内容：
```
createdb -h 127.0.0.1
psql -h 127.0.0.1
create user admin with password 'admin';
```

在新窗口打开你的kanboard使用admin/admin登录！记得在后台改密码！
