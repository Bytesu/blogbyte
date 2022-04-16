
图片缓存设置

链接：https://www.nowcoder.com/questionTerminal/6ffe6ff2a0724000a428e397ce7f4026
来源：牛客网

cache-control：max-age= 3153600000，public，immutable
public表示客户端和代理服务器都设置缓存
immutable表示F5刷新或者点击浏览器刷新按钮刷新都不发送请求



cache-control: public, max-age=31536000
expires: Fri, 10 Mar 2023 09:36:56 GMT


链接：https://www.nowcoder.com/questionTerminal/6ffe6ff2a0724000a428e397ce7f4026
来源：牛客网

强制刷新 – 当按下ctrl+F5来刷新页面的时候, 浏览器将绕过各种缓存(本地缓存和协商缓存), 直接让服务器返回最新的资源;


那不至于，一般做到三级缓存就不错了：Memorycache、Diskcache、NetCache。剩下的长时间不用会交给浏览器垃圾回收器释放


https://www.jianshu.com/p/c9a31aa6d672

https://blog.51cto.com/u_13953650/3759055
