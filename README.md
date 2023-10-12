# Set-up tasks for Infosys November 2 2023 Dallas, TX

Infosys to complete these tasks by Oct 11, 2023

## Provision Adobe Commerce Cloud v2.4.6

- [x] If not already provisioned, Commerce &amp; App Builder sandbox can be requested through SPP:
https://solutionpartners.adobe.com/solution-partners/home/learn/tools/sandboxes.html

## Provision Adobe App Builder

- [ ] Create an App Builder project https://developer.adobe.com/commerce/extensibility/events/project-setup/
        * [App Builder Space](https://developer.adobe.com/console/projects/51911/4566206088345069907/)
            * [Production](https://developer.adobe.com/console/projects/51911/4566206088345069907/workspaces/4566206088345079600/details)
            * [Stage](https://developer.adobe.com/console/projects/51911/4566206088345069907/workspaces/4566206088345079601/details)

- [ ] Install Adobe I/O Events for Adobe Commerce (Skip step 1 as you will be on 2.4.6): https://developer.adobe.com/commerce/extensibility/events/installation/
- [ ] Configure Adobe I/O Connection within App Builder https://developer.adobe.com/commerce/extensibility/events/configure-commerce/

## Install AdminUI SDK
- [ ] Install IMS Modules (required by Admin UI SDK): https://experienceleague.adobe.com/docs/commerce-admin/start/admin/ims/adobe-ims-
config.html?lang=en
- [ ] Install Admin UI SDK: https://developer.adobe.com/commerce/extensibility/admin-ui-
sdk/installation/

## Install Catalog Service
- [ ] Configure Catalog Service: Installation and configuration docs

## Webhook Framework
Documentation not published yet. This is GA 10/10. Adobe team will follow up with this step as soon as we have documentation ready.

## User pre-requisites

Each participant of the hands-on labs will need these pre-requisites on their local machine to engage
with the hands-on labs:

- [x] NodeJS 14.17 LTS https://nodejs.org/en/blog/release/v14.17.0 
- [x] Adobe IO CLI https://developer.adobe.com/runtime/docs/guides/tools/cli_install/
- [x] API Mesh plugin https://experienceleague.adobe.com/docs/commerce-learn/tutorials/adobe-developer-app-builder/api-mesh/installing-aio-mesh-plugin.html?lang=en
- [x] VS Code (or other IDE) https://code.visualstudio.com/
- [x] API Client e.g. Postman https://www.postman.com/product/api-client/


# Installation Notes and Issues

* [Step 4](https://developer.adobe.com/commerce/extensibility/events/project-setup/) asks to `Select the DX Experience Cloud SPA v1 option` but this isn't available. I selected `@adobe/generator-app-excshell` as it was the only one based on `dx/excshell/1` which seems like a requirement for the runtime demo