
## 原型覆盖
覆写原型链上方法，可以起到全局配置或拦截作用.


```javascript
(function(open) {
        XMLHttpRequest.prototype.open = function(method, url, async, user, pass) {
          this.addEventListener("readystatechange", function() {
            if (this.readyState == 4 && this._url.includes("/add.js") && "{{ product.id }}" != "") {
              try {
                $.getJSON("/cart.js", function(data) {
                  var basketData = [];
                  var item;
                  if (!data.items || !data.items.length) return;
                  for (var i = 0; i < data.items.length; i++) {
                    item = data.items[i];
                    if (item.product_id == "{{ product.id }}") {
                      basketData.push({
                        id: item.product_id,
                        price: (typeof(item.price) != "number") ? item.price : (item.price/100),
                        quantity: item.quantity
                      });
                    }
                  }
                  window.criteo_q.push({
                    event: "addToCart",
                    ecpplugin: "shopify-mc",
                    product: basketData 
                  });
                });
              } catch (err) {
                // do nothing
              }
            }
          }, false);
          open.call(this, method, url, async, user, pass);
        };
      })(XMLHttpRequest.prototype.open);
```



```css
element+element     | div + p 
Selects the first <p> element that is placed immediately after <div> elements

element1~element2   | p ~ ul  
Selects every <ul> element that is preceded by a <p> element

[attribute]         | [target]
Selects all elements with a target attribute

[attribute=value]   | [target=_blank]
Selects all elements with target="_blank"

[attribute~=value]  | [title~=flower]
Selects all elements with a title attribute containing the word "flower"

[attribute|=value]  | [lang|=en]
Selects all elements with a lang attribute value equal to "en" or starting with "en-"

[attribute^=value]  | a[href^="https"]
Selects every <a> element whose href attribute value begins with "https"

[attribute$=value]  | a[href$=".pdf"]
Selects every <a> element whose href attribute value ends with ".pdf"

[attribute*=value]  | a[href*="w3schools"]
Selects every <a> element whose href attribute value contains the substring "w3schools"

:checked            | input:checked
Selects every checked <input> element

:default            | input:default
Selects the default <input> element

:disabled           | input:disabled
Selects every disabled <input> element

:empty              | p:empty
Selects every <p> element that has no children (including text nodes)

:enabled            | input:enabled
Selects every enabled <input> element

:first-child        | p:first-child
Selects every <p> element that is the first child of its parent

::first-letter      | p::first-letter
Selects the first letter of every <p> element

::first-line        | p::first-line
Selects the first line of every <p> element

:first-of-type      | p:first-of-type
Selects every <p> element that is the first <p> element of its parent


:lang(language)     | p:lang(it)
Selects every <p> element with a lang attribute equal to "it" (Italian)

:last-child         | p:last-child
Selects every <p> element that is the last child of its parent

:last-of-type       | p:last-of-type
Selects every <p> element that is the last <p> element of its parent

:link               | a:link
Selects all unvisited links

::marker            | ::marker
Selects the markers of list items

:not(selector)      | :not(p)
Selects every element that is not a <p> element

:nth-child(n)       | p:nth-child(2)
Selects every <p> element that is the second child of its parent

:nth-last-child(n)  | p:nth-last-child(2)
Selects every <p> element that is the second child of its parent, counting from the last child

:nth-last-of-type(n)| p:nth-last-of-type(2)
Selects every <p> element that is the second <p> element of its parent, counting from the last child

:nth-of-type(n)     | p:nth-of-type(2)
Selects every <p> element that is the second <p> element of its parent

:only-of-type       | p:only-of-type  
Selects every <p> element that is the only <p> element of its parent

:only-child         | p:only-child
Selects every <p> element that is the only child of its parent

:optional           | input:optional
Selects input elements with no "required" attribute

:out-of-range       | input:out-of-range
Selects input elements with a value outside a specified range

::placeholder       | input::placeholder
Selects input elements with the "placeholder" attribute specified

:read-only          | input:read-only
Selects input elements with the "readonly" attribute specified

:read-write         | input:read-write
Selects input elements with the "readonly" attribute NOT specified

:required           | input:required
Selects input elements with the "required" attribute specified

:root               | :root
Selects the document's root element

::selection         | ::selection
Selects the portion of an element that is selected by a user

:target             | #news:target
Selects the current active #news element (clicked on a URL containing that anchor name)

:valid              | input:valid
Selects all input elements with a valid value

:visited            | a:visited
Selects all visited links


```