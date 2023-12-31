# Dallas Enablement Training

Set-up tasks for Infosys November 2 2023 Dallas, TX

## References

- App Builder
    - [Dalls Enablement Training in App Builder](https://developer.adobe.com/console/projects/51911/4566206088345069907/)
        - [Production Workspace](https://developer.adobe.com/console/projects/51911/4566206088345069907/workspaces/4566206088345079600/details)
        - [Stage Workspace](https://developer.adobe.com/console/projects/51911/4566206088345069907/workspaces/4566206088345079601/details)
- Adobe Commerce Cloud
    - [Adobe Commerce Cloud Project](https://console.magento.cloud/arjun-n01/t3cui2xfd7pvq/master)
        - [Master (Frontend)](http://master-7rqtwti-t3cui2xfd7pvq.ap-4.magentosite.cloud)
        - [Master (Admin)](https://master-7rqtwti-t3cui2xfd7pvq.ap-4.magentosite.cloud/admin) Requires Adobe IMS Accsss to Infosys


## Provision Adobe Commerce Cloud v2.4.6

- [x] If not already provisioned, Commerce &amp; App Builder sandbox can be requested through SPP:
https://solutionpartners.adobe.com/solution-partners/home/learn/tools/sandboxes.html

## Provision Adobe App Builder

- [x] Create an App Builder project https://developer.adobe.com/commerce/extensibility/events/project-setup/
    
    Note: _For this workshop, we are using the **Stage** workspace because it does not require submission approval_

- [x] Install Adobe I/O Events for Adobe Commerce (Skip step 1 as you will be on 2.4.6): https://developer.adobe.com/commerce/extensibility/events/installation/
- [x] Configure Adobe I/O Connection within App Builder https://developer.adobe.com/commerce/extensibility/events/configure-commerce/

## Install AdminUI SDK
- [x] Install IMS Modules (required by Admin UI SDK): https://experienceleague.adobe.com/docs/commerce-admin/start/admin/ims/adobe-ims-config.html?lang=en
- [x] Install Admin UI SDK: https://developer.adobe.com/commerce/extensibility/admin-ui-sdk/installation/
- [x] Configure IMS Modules

## Install Catalog Service
- [x] Configure Catalog Service: Installation and configuration docs https://experienceleague.adobe.com/docs/commerce-merchant-services/catalog-service/installation.html?lang=en

## Webhook Framework

- [x] Install Webhooks module
- [x] Configure Webhooks and complete associated steps https://developer.adobe.com/commerce/extensibility/webhooks/


## User pre-requisites

Each participant of the hands-on labs will need these pre-requisites on their local machine to engage
with the hands-on labs:

- [x] NodeJS 14.17 LTS https://nodejs.org/en/blog/release/v14.17.0 
- [x] Adobe IO CLI https://developer.adobe.com/runtime/docs/guides/tools/cli_install/
- [x] API Mesh plugin https://experienceleague.adobe.com/docs/commerce-learn/tutorials/adobe-developer-app-builder/api-mesh/installing-aio-mesh-plugin.html?lang=en
- [x] VS Code (or other IDE) https://code.visualstudio.com/
- [x] API Client e.g. Postman https://www.postman.com/product/api-client/


## Access Setup

We also committed to setting up this level of access

### App Builder

* [ ] Adobe needs one user who has access to App Builder Org
    * Administrative Access to run creation scripts
    * Developer Access if something else


### Adobe Commerce Admin Access

Adobe may need troubleshooting access to Adobe Commerce, but they hope they don't need this.

* [ ] Provison access to an adobe resource (Adobe to confirm who this will be)


## Installation Notes and Issues

* [Step 4](https://developer.adobe.com/commerce/extensibility/events/project-setup/) asks to `Select the DX Experience Cloud SPA v1 option` but this isn't available. I selected `@adobe/generator-app-excshell` as it was the only one based on `dx/excshell/1` which seems like a requirement for the runtime demo
