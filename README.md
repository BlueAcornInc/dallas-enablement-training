# Adobe Commerce Technical Enablement Workshop

November 2, 2023 at Infosys Dallas Office
A tailored enablement session with Adobe engineering to get equipped on modern technology approaches for Commerce.

# Getting Started

You must initialize your development environment in order to perform lab work, such as extending the Commerce Admin UI using the SDK.

We'll begin from a preset state of the (App Builder template)[https://developer.adobe.com/app-builder/docs/getting_started/first_app/]:

1. Open the project in VS Code or a Github Codespace.
2. Launch from the included devcontainer configuration
3. Open a terminal instance and run: `npm install`
4. Authenticate with AIO: `aio login`
5. Set your Org to `Infosys Technologies Partner Sandbox Americas`: `aio console org select`
6. Set your Project to `dallas`: `aio console project select`
7. Set your Workspace to `Stage`: `aio console workspace select`
8. Import your workspace environment configuration (using Option A): `aio app use`
9. Start your sample app: `aio app run`

You should then see an app at `localhost:9080` which loads an order and product grid.

Your local `.env` file may require additional configuration to allow the app to connect to the Commerce Cloud instance APIs:

```
COMMERCE_BASE_URL=https://master-7rqtwti-t3cui2xfd7pvq.ap-4.magentosite.cloud/
COMMERCE_CONSUMER_KEY=<Key ending in 'g1u3'>
COMMERCE_CONSUMER_SECRET=<Key ending in 'uhpq'>
COMMERCE_ACCESS_TOKEN=<Key ending in 'gsb0'>
COMMERCE_ACCESS_TOKEN_SECRET=<Key ending in 'bc2k'>
```

Refer to the Cloud instance back office configuration: **System > Extensions > Integrations > App Builder: Admin UI SDK Example > Integration Details**
You may need to copy these values into your `.env` before running the app (step 9 above).

## Setting up Admin UI SDK App

While the main app that runs will provide the admin UI to view orders and product data remotely from the Commerce instance,
we also need to configure a local web server to attach to our deployed Cloud instance. The environment itself is already
configured to do that (see section below, _Adobe Commerce Configuration Reference_). You will now need to run your web server
to deliver your app to the Commerce admin UI.

From this project root directory, run: `node server.js`

Then you can access the web server via: [https://localhost:9090/]

See also:
 - [./CHECKLIST.md]
 - [./README-aio.md]
 - [https://developer.adobe.com/commerce/extensibility/admin-ui-sdk/configuration/]

## Note on Webhooks Example

This repository also contains an App Builder action for handling Commerce webhook events in `src/dx-excshell-1/ext.config.yaml`

```
...
SampleWebhook:
  actions:
    commerce-sample-product-validation:
      function: actions/commerce/sample-product-validation.js
      web: 'yes'
      runtime: 'nodejs:16'
...
```

For testing its behavior, run:

```
$ aio runtime action invoke SampleWebhook/commerce-sample-product-validation --blocking --result --param product '{"sku":"24-WG084"}'
{
  "body": "{\"op\":\"exception\",\"message\":\"This product is not available for consumer purchase because it contains banned materials.\"}",
  "statusCode": 200
}
```

In this example, passing any other `sku` will produce a successful result. This demonstrates the ability of an external action to drive a webhook.


## Adobe Commerce Configuration Reference

For verifying environment setup for use in training and lab work:

**Stores > Configuration > Adobe Services > Adobe I/O Events**

General configuration
- Adobe I/O Authorization Type: OAuth
- Adobe I/O Workspace Configuration: (retrieve Stage workspace JSON from Adobe Developer Console)
- Adobe Commerce Instance ID: `INFOSYS_TECHNOLOGIES_LTD_PARTNER_SANDBOX_MASTER_ENV`
- Adobe I/O Event Provider ID: `d67866aa-7263-4672-9fa6-52cecfe4497a`
    - Note: this provider was generated using `bin/magento events:create-event-provider` in `master` Cloud environment

Commerce events
- Merchant ID: `INFOSYS_TECHNOLOGIES_LTD_PARTNER`
- Environment ID: `Production`

**Stores > Configuration > Services > Commerce Services Connector**

- Sandbox public API key: `a84464cdced04628baf5f5ede8627d60`
- Sandbox private API key: (see <rick.buczynski@blueacornici.com>, key generated from Magento.com user account)
- Production public API key: `586e2dc81f8f43988c0b32f54284ec0e`
- Production private API key: (see <rick.buczynski@blueacornici.com>, key generated from Magento.com user account)
- SaaS Identifier: `DallasEnablementTraining` (Project ID: `10c57265-b291-4f30-aa35-5a47c1eaccd1`)
- Data Space: `Production` (Data Space ID: `0ee5e13b-ee7f-40da-9997-b9dab721b02c`)
- IMS Organization ID: (`118765E655DEE7427F000101@AdobeOrg`)

**Stores > Configuration > Adobe Services > Admin UI SDK**

- Enable Admin UI SDK: `Yes`
- Enable local server: `Yes`
- Base URL: `https://localhost:9090`
- IMS Token: `dummyToken`
- IMS Org Id: `imsOrg`

**Cloud Configuration > Master > Environment Variables**

- `env:APP_BUILDER_URL`: `https://51911-dallas-stage.adobeioruntime.net/api/v1/web`
    - This variable is required to power the Cloud project sample webhook module, which must be able to locate the App Builder runtime function
