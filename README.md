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

## Setting up Admin UI SDK App

While the main app that runs will provide the admin UI to view orders and product data remotely from the Commerce instance,
we also need to configure a local web server to attach to our deployed Cloud instance. The environment itself is already
configured to to that (see section below, _Adobe Commerce Configuration Reference_). You will now need to run your web server
to deliver your app to the Commerce admin UI.

From this project root directory, run: `node server.js`

Then you can access the web server via: [https://localhost:9090/]

See also:
 - [./CHECKLIST.md]
 - [./README-aio.md]
 - [https://developer.adobe.com/commerce/extensibility/admin-ui-sdk/configuration/]

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
