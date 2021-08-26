### 客户端、前端 存储

#### 一、 起 因
		首先解释下为什么想来写这个关于前端存储的问题，因为最近在做小程序相关的内容。但是，在开发过程中，我们难免会遇到 token 存储、 代码缓存、 图片存储等等。 以及可能存在的 一系列的问题。


		现在，我们就专门从  浏览器 存储 入手，来真正的了解 缓存 存在的 场景，以及在日常开发中，我们需要 缓存的地方，以及使用缓存会给我们带来哪些优势 or bug。


#### 二、缓存的 初始状态

		很久很久之前，还在 web 端开发的时候。 那个年代其实前后端分离开发模式 非常的少，而且你也得去 兼容 各个 大厂提供的 浏览器。 那个时候  IE6789 、 火狐、 谷歌 、Safari 等等。 多到 有些市场份额很少的 就直接 舍弃掉。 从那个年代过来的人 应该都 记得 国产神 浏览器 UC （说到这里，眼泪就流了下来 T—T）
	
		好吧，好像 扯远了， 那个年代的 cookie （饼干、小甜点） 在我第一次接触到它的时候，哇~ 我是惊叹的。 原来有这种操作？ 什么操作呢？ 服务端会在 用户登录成功之后 接口返回一个 token ，类似秘钥一样的东西，然后 前端就会拿到这个token 然后 缓存在一个 地方， 这个地方 就是 cookie。  然后再次访问需要有 登陆态的 接口的时候，我们就会 从 cookie 中 读取 token，然后在 发送 http 请求时候，写进 header 中。 后端接受到这个 请求以后，就可以获取到这个  token ，然后经过简单验证即可。 验证通过了，则进行下一步操作。

		好了，下一步。我们就进行详细的 介绍 Cookie

		
#### 三、 Cookie

##### 1.1  		Cookie 是什么？
		
	Cookie 翻译 过来就是 饼干、小甜点 的意思。
	是在 web端 常见的 存储方式之一，而且在 发起 http 请求的时候会自动被带上。 但是这个个人建议 不要大量的去使用，因为 cookie 会被带入进去 http 的请求内容中。请求包 可能会 越来越大，导致请求速度慢从而 影响用户体验。



-------

	说白了。 cookie 就是保存在客户端的一段  **字符串**。
	
	cookie可以手动设置，也可以由服务器产生，当客户端（浏览器）向服务器发送请求，服务器会反馈一些信息给客户端，这些信息的key/value值被浏览器作为文件保存在客户端特定的文件夹中。

------

##### 1.2  cookie 如何使用
	当然我们也会避免不了的会去用到。那么就介绍下 使用的方法吧。

```javascript
// 存cookie
let setCookie = (name, value, times) = > {
	let date = new Date()
	data.setDate(data.getDate() + times)
	document.cookie = name + '=' + value + ';expires=' + date
} 
	
// 取cookie
let getCookie = (name) => {
	let cookies = document.cookie
	let cookieArr = cookies.split(';')
	for(let i = 0; i < cookieArr.length; i++) {
		let arr = cookieArr[i].split('=')
		if (name == arr[0] ) {
			return arr[1]
		}
	}
	return false
}

//  删除 cookie
let removeCookie = (name) => {
	setCookie(name, '', '-1')
	// 通过建立 cookie 的时间设置，将时间设置提前一天，从而强行让 cookie 失效，最后达到 删除cookie 的目的
}

```

------ 

##### 1.3  cookie 的 官方定义

	这里，我们看下官方是如何 给 cookie 定义的。

![](http://images2017.cnblogs.com/blog/675289/201708/675289-20170802112915849-1902541418.png)


 1）  name： cookie 的名称
 2）  value： cookie 的 值
 3）  maxAge： cookie  的 最大有效期
 4）  secure： 是否使用安全协议传输
 5）  path： cookie 使用的 路径。 不同路径无法获取到。
 6）  domain： cookie 的域， 和 path 类似。主要防止跨域攻击。
 7）  comment： 该cookie 的用处说明
 8）  version：cookie 的版本

------ 

##### 1.4  cookie  使用时注意事项

1） cookie 是有大小限制的，每个cookie 所存放的数据不能超过 4k， 如果超过则该属性将返回空字符串。

	如果我们需要在客户端存储更大的数据，怎么办？ 后面我们还会介绍到 userDate 和 localStorage（最大是5M） 等等。

2） 通常我们需要将 存放的 value 值 进行 escape 编码。 然后在使用的时候 再用 unescape()   函数，反编码  就好了。

3）重要的信息不要放 cookie


好了~ 本期的 cookie 相关的内容就讲到这里了。 下面会持续更新一系列关于 客户端存储的内容。
