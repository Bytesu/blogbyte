## 优化

1. 懒加载所有图片
2. 按需加载所有js 脚本和css文件
3. 图片压缩（测试发现下载Shopify自身压缩后的首页banner图片，再通过tiny压缩，文件大小可减少50%，网络传输大小可减少5%左右:115->109, 目测图片品质未有变化）
    a. https://tinypng.com/
    b. tinyjpg.com
    c. Crush.pics/Image Optimizer压缩图像文件而不会有任何质量损失
4. Google PageSpeed Insight
5. 减少APP安装数量.通过Shopify下载的大多数APP会将一些JavaScript / CSS文件添加到您的商店。主要问题是，如果您不使用该应用程序，JavaScript / CSS文件将在后台运行，并使您的网站性能降低
6. 减少HTTP请求. 
- 合并并内嵌CSS脚本。
- 内嵌较小的JavaScript。
- 结合所有JavaScript。
- 最大限度地减少设计和功能图片的使用CSS图像精灵将图像转换为Base64代码限制社交按钮的数量

7. 通常，您可以分别为Google Analytics，Google AdWords，再营销等添加单独的跟踪代码，也可以将其发送给开发人员; 此过程将花费时间并最终降低整体网站性能。在Google Tag Manager的帮助下，您的代码会被存储在一个位置。
您可以在Shopify商店中使用Google Tag Manager。Shopify官网也可以找到详细的Step by Step教程. https://help.shopify.com/en/manual/reports-and-analytics/google-analytics/google-tag-manager


https://apps.shopify.com/file-optimizer
https://speedboostr.com/shopify-liquid-lesson-auto-minifying-css/

https://gtmetrix.com/
