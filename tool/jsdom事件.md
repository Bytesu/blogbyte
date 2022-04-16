
## JavaScript事件 DOMNodeInserted DOMNodeRemoved


DOM2级的变动（mutation）事件能在DOM中的某一部分发生变化时给出提示。变动事件是为XML或HTML DOM设计的，并不特定于某种语言。DOM2级定义了如下变动事件：

（1）DOMSubtreeModified：在DOM结构中发生的任何变化时触发。这个事件在其他任何事件触发后都会触发。

（2）DOMNodeInserted：在一个节点作为子节点被插入到另一个节点中时触发。

（3）DOMNodeRemoved：在节点从其父节点中被移除时触发。

（4）DOMNodeInsertedIntoDocument：在一个节点被直接插入文档或通过子树间接插入到文档之后触发。这个事件在DOMNodeInserted之后触发。

（5）DOMNodeRemovedFromDocument：在一个节点被直接从文档中移除或通过子树间接从文档中移除之前触发。这个事件在DOMNodeRemoved之后触发。

（6）DOMAttrModified：在特性被修改之后触发。

（7）DOMCharacterDataModified:在文本节点的值发生变化时触发。




ref:

https://blog.csdn.net/ZuoYuYi/article/details/52834565