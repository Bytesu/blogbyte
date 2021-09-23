Front end 优化方案 
===


问题
====
```
-  开发启动时间长
-  代码中存在旧代码
-  业务/公有组件优化
-  业务组件性能问题需重构、优化
-  系统维护困难
-  组件重构易出现功能问题
-  接口异常，front-end需提供一种处理方案
```

启动/加载速度
===
    1. 1-2s 加载完成首屏
    2. gzip 压缩
    3. 模块懒加载
    4. 优化开发环境启动速度

业务功能
===
    1.【高】接口合并, 数据缓存.  将`validateToken`、`sellers`、`dashboard_get_available_target_group_region`、`ourSeller` 合并到 `getDatasFromNornaApi`中
    2.【高】功能升级. price index(lookbook)功能
        1. 接口调用优化 10 -> 1
        2. 组件代码优化
        3. 未使用代码清理
        4. 替换comparePerSellerV2 为对应python接口
        5. 优化lookbook交互(目前偶尔有错位)

    3.【高】组件合并. 折线图：history analytics 和 td 部分visual 折线图组件合并
    4. 加载组件
        加载组件应尽可能控制在变化局部界面
    5.【高】组件优化. TD 组件性能优化，目前偶尔有卡顿顿感发
    生
    6. td 测试
    7. price index 测试


    组件    -   代码中对同一/相似UI界面，需维护一份代码
    - 统一Mesasge 组件,Message,NoData(NoCategory)、Tips
    - 统一代码中Loading 组件,Spin,Loading
    - 统一下拉框组件
    - 统一input、checkbox、button, date、select、date-range、radio、表单
    - 统一Modal 框
    - 请求进度提示 progress
    - 加载前的页面骨架(考虑)
    - 统一Legend


组件测试
===

    1. 关键功能组件测试
        - td 
        - price index
        - Price architecture
    2. 公用组件组件测试 90%


清理合并代码【高】
====

    1. 将未使用代码删除,优化业务组件代码结构、优化渲染
    2. 清理、合并、优化pages中代码
    3. 清理、合并、优化components 重复中代码
        - analysis 清理
        - Calendar 系统中需要只保留一份Calendar
        - cards 清理
        - close-popup
        - collection
        - common 
        - Compare
        - comparison
        - comparison
        - ConfirmDialog
        - DashboardReport
        - error-message
        - filters
        - form-elements
        - graph
        - guards
        - InfiniteScroll
        - layout
        - links
        - List
        - loaders
        - Lookbooks
        - Modal
        - NoData
        - Product
        - ProductsModalV2
        - ProgressBar
        - Report
        - ShouldRender
        - ShowMore
        - StatusInformation
        - ToggleProducts
        - Trigger
        - typography
        - VendorLineCharts

    4. 清理、合并 graphql 中代码
    5. 清理style文件，保持相同内容的变量引用
    6. utils 文件清理
    7. type 文件清理。


代码维护
===

    - lint check
    - prettier format
    - 按代码目录结构生成文档
    - 组件demo


代码规范建议
===

    - 单个组件文件不超过250行
    - 目录命名小驼峰命名规则, `eg: myFirstName`
    - 组件命名规则 `eg:MyFirstName`
        - 组件文件夹 `MyFirstName`
        - 组件`MyFirstName`  内部命名结构
            - `index.ts`
            - `MyFirstName.tsx`
            - `MyFirstName.types.ts`
            - `style.module.scss`
            - `MyFirstName.test.tsx`
            - `uits.ts`     强依赖工具文件
            - `components`  强依赖内部私有组件
    - 组件结构
        - 组合组件
            - 基础组件
        - 业务组件
            - 基础组件
            - 组合组件
            - 强依赖基础组件
            - 强依赖组合组件
            
    - utils/type
        - 多组件使用 ，需提取到对应全局位置
        - 强依赖util/type 放到对应组件目录下
        - 通用组件放到对应组件目录下

