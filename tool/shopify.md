# shopify


https://shopify.dev/changelog

## Requirements for using Shopify APIs
- All APIs are subject to the Shopify API [License and Terms of Use](https://www.shopify.com/legal/api-terms?shpxid=561dc9ce-BFCA-4BCC-EB43-D2228F6E560C)
- All APIs are subject to [rate limits](https://shopify.dev/api/usage/rate-limits)
- All APIs require developers to [authenticate](https://shopify.dev/apps/auth)
- Some APIs are [versioned](https://shopify.dev/api/usage/versioning)

- https://shopify.dev/apps/tools/cli
## Shopify Admin API GraphiQL explorer
````
Explore and learn Shopify's Admin API using GraphiQL Explorer. To build queries and mutations with shop data, install Shopify’s GraphiQL app.

# Apps
|- Getting started
|-Developer tools
    |-@shopify/app-bridge 
        |-Actions : [An action provides a way for applications and hosts to trigger events with a payload](https://shopify.dev/apps/tools/app-bridge/actions)
            |- Action sets
            |- Toast `displays a non-disruptive message that appears at the bottom of the interface to provide quick and short feedback on the outcome of an action`
            |- TitleBar `allows you to populate a standardized title bar with button actions and navigation breadcrumbs`
            |- Button
            |- ButtonGroup
            |- Modal
            |- Cart `These actions require the following app versions:Point of Sale iOS v5.11.0 or above, Point of Sale Android v3.3.2 or above`
            |- Features  `The Features action set allows you to find out what features are available in the current app context, and to request currently unavailable features.`
            |-ContextualSaveBar `The contextual save bar tells merchants their options once they have made changes to a form on the page`
            |-Error `You can subscribe to runtime errors similar to other action types`
            |- Loading `The loading action set is used to indicate to merchants that a page is loading or an upload is processing.`
            |- Menu
                |- Channel Menu `is only available to apps which are sales channels. The ChannelMenu action allows you to create a navigation menu in the sidebar of Shopify admin on desktop. On Shopify mobile, the menu is rendered in a dropdown, like NavigationMenu. ` 
                |- NavigationMenu `allows you to create a navigation menu for your app`
            |- AppLink
            |- Navigation
                |- Hitory  `The History action set allows you to use the JavaScript History API to modify the top-level browser URL without navigating. Use the History action set to update the top-level browser URL to match your app.`
                |- Redirect `The Redirect action set allows you to modify the top-level browser URL. Use the Redirect action set to navigate within your app, or to redirect merchants elsewhere within the Shopify admin or on the web.`
            |- ResourcePicker `provides a search-based interface to help merchants find and select one or more products, collections, or product variants, and then returns the selected resources to your app`
            |- Scanner `allows you to use the mobile device's camera to scan barcodes`
            |- Share `allows you to invoke the "share sheet" to share content from your embedded app on an iOS or Android device.`
        |- Methods `Most of Shopify App Bridge’s functionality relies on actions`
        |- React Components `Shopify App Bridge offers React component wrappers for some actions.`
            |- ClientRouter `prevents App Bridge from changing the iframe URL, and lets you provide a client-side router, for example react-router, to handle navigation`
            |-Loading
            |-Modal
            |-Provider
            |-ResourcePicker
            |-RoutePropagator
            |-TitleBar
            |-Toast
        |- Polaris `Shopify’s React component library and design system.`
        |- Debugging `Under the hood, Shopify App Bridge uses Redux to manage actions and app state. All actions dispatched by your app are recorded by Redux, and you can use Redux DevTools to review, replay, and dispatch actions to help you debug.`
        |- Migrate

    |- Development stores
    |- API libraries `Shopify provides several official libraries for interacting with the Admin API. Members of the Shopify developer community have created similar libraries covering other languages and technology stacks.`
    |- Shopify Admin API GraphiQL explorer

|- Best practices
|- Check out
|- Online store
|- Subscriptions
|- Flow
|- Payments
|- Fulfillment
|- Shopify POS
|- Channels
|- Admin app extensions
|- Authentication
|- Webhooks
|- Metafiels
|- App billing
|- Shopify App Store


# Themes
# Custom storefronts
# APIs and references
|- Graphql Admin API
|- REST Admin API
|- Liquid
|- Ajax API
|- Storefront API
|- View all





 
    

````
### handling error
```
app.error(function (data: Error.ErrorAction) {
  
console.info('[client] Error received: ', data);
});
```

https://shopify.dev/apps/tools/graphiql-admin-api

## other
- [host](https://shopify.dev/apps/tools/app-bridge/retrieve-the-host)
- [outh](https://shopify.dev/apps/auth/oauth)
### outh
- [Authenticate with OAuth](https://shopify.dev/apps/tools/app-bridge/getting-started)

- [About Shopify APIs](https://shopify.dev/api/usage)

- [Object handles](https://shopify.dev/api/liquid/basics/handle)
- [Polaris](https://polaris.shopify.com/?shpxid=5e04d777-2EFC-4182-E601-662B1504A238) :  Shopify’s React component library and design system.

- [Blog Edit](https://shopify.dev/api/admin-rest/2021-10/resources/blog#top)
- [API & SDK forum](https://community.shopify.com/c/shopify-apis-and-sdks/bd-p/shopify-apis-and-technology?shpxid=6924ff3e-E086-41BD-E1F1-8D17E2DAB5DE)