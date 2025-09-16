---
title: azure_extras
hide_title: false
hide_table_of_contents: false
keywords:
  - azure_extras
  - stackql
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage Azure resources using SQL
custom_edit_url: null
image: /img/providers/azure/stackql-azure-provider-featured-image.png
id: 'provider-intro'
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';

Additional Azure cloud computing services by Microsoft.  

:::info[Provider Summary] 

total services: __40__  
total resources: __548__  

:::

See also:   
[[` SHOW `]](https://stackql.io/docs/language-spec/show) [[` DESCRIBE `]](https://stackql.io/docs/language-spec/describe)  [[` REGISTRY `]](https://stackql.io/docs/language-spec/registry)
* * * 

## Installation

To pull the latest version of the `azure_extras` provider, run the following command:  

```bash
REGISTRY PULL azure_extras;
```
> To view previous provider versions or to pull a specific provider version, see [here](https://stackql.io/docs/language-spec/registry).  

## Authentication

StackQL uses Azure application credentials obtained using the <CopyableCode code="az login" /> command from the Azure SDK.  For more information, see <a href="https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli">here</a>.

### Authenticating using an Azure Service Principal

To authenticate using an Azure Service Principal, set the following environment variables: <CopyableCode code="AZURE_TENANT_ID" />, <CopyableCode code="AZURE_CLIENT_ID" /> and <CopyableCode code="AZURE_CLIENT_SECRET" />, see [__creating-an-azure-service-principal__](https://learn.microsoft.com/en-us/azure/developer/go/azure-sdk-authentication-service-principal?tabs=azure-cli#2-create-an-azure-service-principal).

## Services
<div class="row">
<div class="providerDocColumn">
<a href="/services/addons/">addons</a><br />
<a href="/services/ag_food_platform/">ag_food_platform</a><br />
<a href="/services/app_compliance_automation/">app_compliance_automation</a><br />
<a href="/services/code_signing/">code_signing</a><br />
<a href="/services/commerce/">commerce</a><br />
<a href="/services/community_training/">community_training</a><br />
<a href="/services/customer_insights/">customer_insights</a><br />
<a href="/services/dev_spaces/">dev_spaces</a><br />
<a href="/services/developer_hub/">developer_hub</a><br />
<a href="/services/dyn365_fraud_protection/">dyn365_fraud_protection</a><br />
<a href="/services/edge_marketplace/">edge_marketplace</a><br />
<a href="/services/edge_order/">edge_order</a><br />
<a href="/services/edge_order_partner/">edge_order_partner</a><br />
<a href="/services/education/">education</a><br />
<a href="/services/enterprise_knowledge_graph/">enterprise_knowledge_graph</a><br />
<a href="/services/health_bot/">health_bot</a><br />
<a href="/services/healthcare/">healthcare</a><br />
<a href="/services/help/">help</a><br />
<a href="/services/intelligent_recommendations/">intelligent_recommendations</a><br />
<a href="/services/intune/">intune</a><br />
</div>
<div class="providerDocColumn">
<a href="/services/m365_security_and_compliance/">m365_security_and_compliance</a><br />
<a href="/services/management_partner/">management_partner</a><br />
<a href="/services/marketplace/">marketplace</a><br />
<a href="/services/marketplace_catalog/">marketplace_catalog</a><br />
<a href="/services/marketplace_notifications/">marketplace_notifications</a><br />
<a href="/services/marketplace_ordering/">marketplace_ordering</a><br />
<a href="/services/mobile_packet_core/">mobile_packet_core</a><br />
<a href="/services/off_azure_springboot/">off_azure_springboot</a><br />
<a href="/services/open_energy_platform/">open_energy_platform</a><br />
<a href="/services/power_platform/">power_platform</a><br />
<a href="/services/professional_services/">professional_services</a><br />
<a href="/services/saas/">saas</a><br />
<a href="/services/storsimple_1200_series/">storsimple_1200_series</a><br />
<a href="/services/storsimple_8000_series/">storsimple_8000_series</a><br />
<a href="/services/syntex/">syntex</a><br />
<a href="/services/test_base/">test_base</a><br />
<a href="/services/video_indexer/">video_indexer</a><br />
<a href="/services/visual_studio/">visual_studio</a><br />
<a href="/services/windows_extended_security_updates/">windows_extended_security_updates</a><br />
<a href="/services/windows_iot/">windows_iot</a><br />
</div>
</div>
