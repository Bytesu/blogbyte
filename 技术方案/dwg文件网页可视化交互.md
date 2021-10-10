# dwg 处理方案

## 需求
1. dwg 显示图层形式显示到地图上
2. 读取dwg 勘探点数据
3. dwg点位交互

## 需求分解
1. dwg 转 dxf
    oda软件 效果不太理想，有失真
2. 【】点位数据(勘探点)读取
2B. dxf 转 geojson 格式数据
3. 城建坐标转经纬度坐标、城建坐标转大地坐标
    - [ok]城建坐标转大地坐标
    - [] 选定点转换

> https://lbs.amap.com/demo/jsapi-v2/example/overlayers/geojson/
> https://blog.csdn.net/synscen/article/details/119142006
> https://blog.csdn.net/qq_42895926/article/details/102923263
> https://allinpdf.com/dwg-to-pdf
> https://blog.csdn.net/synscen/article/details/119142006
> https://mp.weixin.qq.com/s/LQrahtzJA1ck-AXLliNajA