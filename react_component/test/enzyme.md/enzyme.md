
# enzyme 3.x 

## api

### Shallow Rendering API
Method                                   |Desc
----------------------------------------:|:--
**.at(index) => ShallowWrapper**             | Returns a wrapper around the node at a given index of the current wrapper.
**.childAt(index) => ShallowWrapper**        | Returns a new wrapper with child at the specified index.
**.children([selector]) => ShallowWrapper**  | Returns a new wrapper with all of the children of the node(s) in the current wrapper. Optionally, a selector can be provided and it will filter the children by this selector
.closest(selector) => ShallowWrapper     | Returns a wrapper of the first element that matches the selector by traversing[横过;横越;穿过;横渡] up through the wrapped node's ancestors[祖宗;祖先;(动物的)原种;(机器的)原型] in the tree, starting with itself. It must be a single-node wrapper.
.contains(nodeOrNodes) => Boolean        | Returns whether or not all given react elements match elements in the render tree. It will determine if an element in the wrapper matches the expected element by checking if the expected element has the same props as the wrapper's element and share the same values.
.containsAllMatchingElements(patternNodes) => Boolean | Returns whether or not all of the given react elements in patternNodes match an element in the wrapper's render tree. Every single element of patternNodes must be matched one or more times. Matching follows the rules for containsMatchingElement.
.containsMatchingElement(patternNode) => Boolean  | Returns whether or not at least one of the given react elements in patternNodes matches an element in the wrapper's render tree. One or more elements of patternNodes must be matched one or more times. Matching follows the rules for containsMatchingElement.
.containsAnyMatchingElements(patternNodes) => Boolean | Returns whether or not a patternNode react element matches any element in the render tree. 1. the matches can happen anywhere in the wrapper's contents. 2. the wrapper can contain more than one node; all are searched. Otherwise, the match follows the same rules as matchesElement.
.context([key]) => Any                   | Returns the context hash for the root node of the wrapper. Optionally pass in a prop name and it will return just that value.
.debug([options]) => String              | Returns an HTML-like string of the wrapper for debugging purposes. Useful to print out to the console when tests are not passing when you expect them to.
.dive([options]) => ShallowWrapper       | Shallow render the one non-DOM child of the current wrapper, and return a wrapper around the result. It must be a single-node wrapper, and the node must be a React component.There is no corresponding dive method for ReactWrappers. NOTE: can only be called on a wrapper of a single non-DOM component element node, otherwise it will throw an error. If you have to shallow-wrap a wrapper with multiple child nodes, use .shallow().
.equals(node) => Boolean                 | Returns whether or not the current wrapper root node render tree looks like the one passed in.
.every(selector) => Boolean              | Returns whether or not all of the nodes in the wrapper match the provided selector.
.exists([selector]) => Boolean           | Returns whether or not any nodes exist in the wrapper. Or, if a selector is passed in, whether that selector has any matches in the wrapper.
.exists([selector]) => Boolean           | Returns whether or not any nodes exist in the wrapper. Or, if a selector is passed in, whether that selector has any matches in the wrapper.
.filter(selector) => ShallowWrapper      | Returns a new wrapper with only the nodes of the current wrapper that match the provided selector.
.filterWhere(fn) => ShallowWrapper        |Returns a new wrapper with only the nodes of the current wrapper that, when passed into the provided predicate function, return true.
.find(selector) => ShallowWrapper         |Finds every node in the render tree of the current wrapper that matches the provided selector.
.findWhere(fn) => ShallowWrapper          |Finds every node in the render tree that returns true for the provided predicate function.
.first() => ShallowWrapper                |Reduce the set of matched nodes to the first in the set, just like .at(0).
.forEach(fn) => Self                      |Iterates through each node of the current wrapper and executes the provided function with a wrapper around the corresponding node passed in as the first argument.
.get(index) => ReactElement               |Returns the node at a given index of the current wrapper.
.getWrappingComponent() => ShallowWrapper |If a wrappingComponent was passed in options, this methods returns a ShallowWrapper around the rendered wrappingComponent. This ShallowWrapper can be used to update the wrappingComponent's props, state, etc.
.getElement() => ReactElement             |Returns the wrapped ReactElement. If the current wrapper is wrapping the root component, returns the root component's latest render output.
.getElements() => Array<ReactElement>     |Returns the wrapped ReactElements. If the current wrapper is wrapping the root component, returns the root component's latest render output wrapped in an array.
.hasClass(className) => Boolean           |Returns whether or not the wrapped node has a className prop including the passed in class name. It must be a single-node wrapper.
.hostNodes() => ShallowWrapper            |Returns a new wrapper with only host nodes. When using react-dom, host nodes are HTML elements rather than custom React components, e.g. <div> versus <MyComponent>.
.html() => String                         |Returns a string of the rendered HTML markup of the entire current render tree (not just the shallow-rendered part). It uses static rendering internally. To see only the shallow-rendered part use .debug(). Note: can only be called on a wrapper of a single node.
.instance() => ReactComponent             |Returns the single-node wrapper's node's underlying class instance; this in its methods. NOTE: can only be called on a wrapper instance that is also the root instance. With React 16 and above, instance() returns null for stateless functional components.
.invoke(invokePropName)(...args) => Any   |Invokes a function prop.
.is(selector) => Boolean                  |Returns whether or not the single wrapped node matches the provided selector. It must be a single-node wrapper.
.isEmpty() => Boolean                     |Deprecated: Use .exists() instead.
.isEmptyRender() => Boolean               |Returns whether or not the wrapper would ultimately render only the allowed falsy values: false or null.
.key() => String                          |Returns the key value for the node of the current wrapper. It must be a single-node wrapper.
.last() => ShallowWrapper                 |Reduce the set of matched nodes to the last in the set, just like .at(length - 1).
.map(fn) => Array<Any>|Maps the current array of nodes to another array. Each node is passed in as a ShallowWrapper to the map function.
.matchesElement(patternNode) => Boolean   |Returns whether or not a given react element patternNode matches the wrapper's render tree. It must be a single-node wrapper, and only the root node is checked. The patternNode acts like a wildcard. For it to match a node in the wrapper: 1. tag names must match contents must match: In text nodes, leading and trailing spaces are ignored, but not space in the middle. Child elements must match according to these rules, recursively. 2.patternNode props (attributes) must appear in the wrapper's nodes, but not the other way around. Their values must match if they do appear. 3. patternNode style CSS properties must appear in the wrapper's node's style, but not the other way around. Their values must match if they do appear.
.name() => String/null                   | Returns the name of the current node of this wrapper. If it's a composite component, this will be the name of the top-most rendered component. If it's a native DOM node, it will be a string of the tag name. If it's null, it will be null. The order of precedence on returning the name is: type.displayName -> type.name -> type. Note: can only be called on a wrapper of a single node.
.not(selector) => ShallowWrapper          |Returns a new wrapper with only the nodes of the current wrapper that don't match the provided selector. This method is effectively the negation or inverse of filter.
.parent() => ShallowWrapper               |Returns a wrapper with the direct parent of the node in the current wrapper.
.parents([selector]) => ShallowWrapper    |Returns a wrapper around all of the parents/ancestors of the single node in the wrapper. Does not include the node itself. Optionally, a selector can be provided and it will filter the parents by this selector. It must be a single-node wrapper.
.prop(key) => Any                         |Returns the prop value for the root node of the wrapper with the provided key. It must be a single-node wrapper.
.props() => Object                        |Returns the props object for the root node of the wrapper. It must be a single-node wrapper.
.reduce(fn[, initialValue]) => Any        |Applies the provided reducing function to every node in the wrapper to reduce to a single value. Each node is passed in as a ShallowWrapper, and is processed from left to right.
.reduceRight(fn[, initialValue]) => Any  | Applies the provided reducing function to every node in the wrapper to reduce to a single value. Each node is passed in as a ShallowWrapper, and is processed from right to left.
.render() => CheerioWrapper               |Returns a CheerioWrapper around the rendered HTML of the single node's subtree. It must be a single-node wrapper.
.renderProp(propName)(...args) => ShallowWrapper                            |Returns a function that, when called with arguments args, will return a new wrapper based on the render prop in the original wrapper's prop propName.
.setContext(context) => Self              |A method that sets the context of the root component, and re-renders. Useful for when you are wanting to test how the component behaves over time with changing contexts.
.setProps(nextProps[, callback]) => Self  |A method that sets the props of the root component, and re-renders. Useful for when you are wanting to test how the component behaves over time with changing props. Calling this, for instance, will call the componentWillReceiveProps lifecycle method. Similar to setState, this method accepts a props object and will merge it in with the already existing props.
.setState(nextState[, callback]) => Self  |A method to invoke setState() on the root component instance, similar to how you might in the methods of the component, and re-renders. This method is useful for testing your component in hard-to-achieve states, however should be used sparingly. If possible, you should utilize your component's external API (which is often accessible via .instance()) in order to get it into whatever state you want to test, in order to be as accurate of a test as possible. This is not always practical, however.
.shallow([options]) => ShallowWrapper     |Shallow renders the root node and returns a shallow wrapper around it. It must be a single-node wrapper.
.simulate(event[, ...args]) => Self       |Simulate events on the root node in the wrapper. It must be a single-node wrapper.
.simulateError(error) => Self             |Simulate a component throwing an error as part of its rendering lifecycle. This is particularly useful in combination with React 16 error boundaries (ie, the componentDidCatch and static getDerivedStateFromError lifecycle methods).
.slice([begin[, end]]) => ShallowWrapper  |Returns a new wrapper with a subset of the nodes of the original wrapper, according to the rules of Array#slice.
.some(selector) => Boolean                |Returns whether or not any of the nodes in the wrapper match the provided selector.
.someWhere(fn) => Boolean                 |Returns whether or not any of the nodes in the wrapper pass the provided predicate function.
.state([key]) => Any                      |Returns the state hash for the root node of the wrapper. Optionally pass in a prop name and it will return just that value.
.tap(intercepter) => Self                 |Invokes intercepter and returns itself. intercepter is called with itself. This is helpful when debugging nodes in method chains.
.text() => String                         |Returns a string of the rendered text of the current render tree. This function should be looked at with skepticism if being used to test what the actual HTML output of the component will be. If that is what you would like to test, use enzyme's render function instead.
.type() => String / Function / null       |Returns the type of the only node of this wrapper. If it's a React component, this will be the component constructor. If it's a native DOM node, it will be a string with the tag name. If it's null, it will be null. It must be a single-node wrapper.
.unmount() => Self                        |A method that unmounts the component. This can be used to simulate a component going through an unmount/mount lifecycle.
.update() => Self                         |Syncs the enzyme component tree snapshot with the react component tree. Useful to run before checking the render output if something external may be updating the state of the component somewhere.


### Full Rendering API

```
Full DOM rendering is ideal for use cases where you have components that may interact with DOM APIs or need to test components that are wrapped in higher order components.

Full DOM rendering requires that a full DOM API be available at the global scope. This means that it must be run in an environment that at least “looks like” a browser environment. If you do not want to run your tests inside of a browser, the recommended approach to using mount is to depend on a library called jsdom which is essentially a headless browser implemented completely in JS.
```

method | desc
------:|:--- 

### Static Rendering API
### enzyme Selectors



ref
===
1. https://enzymejs.github.io/enzyme/