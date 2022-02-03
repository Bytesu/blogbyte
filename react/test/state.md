## 复杂state 批量更新

```javascript
import { useState } from 'react';

 const TreeState = {
     empty:'',
     minus:'-',
     plus:'+'
 }

 const [state,setState]  = useState([
     {
        label:'category',val:'cat',disabled:false,active:TreeState.empty, children:[
         {label:'Coats',val:'Coats',disabled:false,active:TreeState.empty,enableSelectAll:true,
            children:[
                {label:'Wool coats',val:'Wool coats',disabled:false,active:TreeState.empty},
                {label:'Puffer coats',val:'Puffer coats',disabled:false,active:TreeState.empty},
                {label:'Trenchcoats',val:'Trenchcoats',disabled:false,active:TreeState.empty},
            ]
         }
        ]
     },
     {
        label:'category1',val:'cat1',disabled:false,active:TreeState.empty, children:[
         {label:'Coats1',val:'Coats1',disabled:false,active:TreeState.empty,enableSelectAll:true,
            children:[
                {label:'Wool coats1',val:'Wool coats1',disabled:false,active:TreeState.empty},
                {label:'Puffer coats1',val:'Puffer coats1',disabled:false,active:TreeState.empty},
                {label:'Trenchcoats1',val:'Trenchcoats1',disabled:false,active:TreeState.empty},
            ]
         }
        ]
     }
 ])

//1. 第index个一级全选下级元素
let index = 1;
const stateCurrent = state[index];
setState([
    ...state.slice(0, index),
    {
        stateCurrent,
        active:true,
        children:stateCurrent.children
    },
    ...state.slice(index+1),
])



//2. 下级元素`Puffer coats`


```

