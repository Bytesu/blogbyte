
React Hook useEffect & useRef & 自定义 Hook 实现渲染闭包访问最新值.md
====

```javascript
    const [count, setCount] = useState(0);
    const countRef = useRef(count);

    const addHandle = () => {
        setCount(count + 1);
        countRef.current = count + 1;
        setTimeout(() => {
            console.log(`count is : ${count}`);
            console.log(`countRef.current is : ${countRef.current}`);
        }, 1000);
    }

    //连续点击三次，打印结果如下
    //count is: 0
    //ref.current is: 4
    //count is: 1
    //ref.current is: 4
    //count is: 2
    //ref.current is: 4
```

```
    原因分析：
    引用参数和值参数的区别, 此处count是传值，ref.current 是ref引用传递.
    通过将count 的初始值改为{val:0}, 发现引用传值也会出现取不到最新值的情况



    优雅方案参考作者`useCurrentValue`实现
    
```

具体内容请参考： 
====

1. [React Hook useEffect & useRef & 自定义 Hook 实现渲染闭包访问最新值](http://www.ptbird.cn/react-hook-useEffect-useRef-current-data.html#comment-1134)

2. [代码](./effect.html)
