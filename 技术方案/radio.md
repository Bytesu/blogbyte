### 改变radio大小


```css

    transform: scale(1.231);
    zoom: 3;

```

### 通过css自定义radio和checkbox

```html
    <!--radio -->
    <div class="vego-checkbox-container">
        <input type="radio" name="customer[note][Are you local to Houston]" value="Yes">
        <span class="checkmark"></span>
    </div>
    <!--checkbox -->
    <div class="vego-checkbox-container">
        <input type="checkbox" name="customer[note][Are you local to Houston]" value="Yes">
        <span class="checkmark"></span>
    </div>
```

```css
    .vego-checkbox-container {
        position: relative;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        padding-left: 27px;
        display: inline-block;
        height: 16px;
    }

    .vego-checkbox-container input[type=checkbox]~.checkmark {
        position: absolute;
        top: 0px;
        left: 0;
        height: 16px;
        width: 16px;
        background-color: transparent;
        border: 1.6px solid var(--colorBlack);
        border-radius: 1px;
        z-index: 0;
        padding: 0 !important;
        margin: 0 !important;
    }

    .vego-checkbox-container input[type=radio]~.checkmark {
        position: absolute;
        top: 0px;
        left: 0;
        height: 16px;
        width: 16px;
        background-color: transparent;
        border: 1.6px solid var(--colorBlack);
        border-radius: 50%;
        z-index: 0;
        padding: 0 !important;
        margin: 0 !important;
        display: flex;
        justify-content: center;
        align-items: center;
    }


    .vego-checkbox-container input[type=checkbox],
    .vego-checkbox-container input[type=radio] {
        position: absolute;
        opacity: 0;
        cursor: pointer;
        top: 0px;
        left: 0;
        height: 16px;
        width: 16px;
        z-index: 1;
    }

    .vego-checkbox-container input[type=radio]~.checkmark:after,
    .vego-checkbox-container input[type=checkbox]~.checkmark:after {
        content: "";
        position: absolute;
        display: none;
    }

    .vego-checkbox-container input[type=checkbox]:hover~.checkmark {
        background-color: var(--colorBlack);
    }

    .vego-checkbox-container input[type=checkbox]:checked~.checkmark {
        background-color: var(--colorBlack);
    }

    .vego-checkbox-container input[type=checkbox]~.checkmark:after {
        left: 4px;
        top: 1px;
        width: 6px;
        height: 10px;
        border: solid white;
        border-width: 0 2px 2px 0;
        -webkit-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        transform: rotate(45deg);
    }


    .vego-checkbox-container input[type=checkbox]~.checkmark:after {
        content: "";
        position: absolute;
        display: none;
    }

    .vego-checkbox-container input[type=checkbox]:checked~.checkmark:after {
        display: block;
    }

    .vego-checkbox-container input[type=radio]~.checkmark:after {
        height: 9px;
        width: 9px;
        border-width: 2px;
    }
    .vego-checkbox-container input[type=radio]:checked~.checkmark:after {
        display: block;
        border: solid black;
        border-radius: 50%;
        background-color: #000;
    }


```
https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_custom_checkbox

