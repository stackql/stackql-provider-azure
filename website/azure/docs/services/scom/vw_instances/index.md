--- 
title: vw_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_instances
  - scom
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.scom.vw_instances" /></td></tr>
</tbody></table>

## Fields

See the SQL Definition (view DDL) for fields returned by this view.

## SQL Definition

<Tabs
defaultValue="Sqlite3"
values={[
{ label: 'Sqlite3', value: 'Sqlite3' },
{ label: 'Postgres', value: 'Postgres' }
]}
>
<TabItem value="Sqlite3">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
JSON_EXTRACT(properties, '$.productVersion') as "product_version",
JSON_EXTRACT(properties, '$.vNetSubnetId') as "vnet_subnet_id",
JSON_EXTRACT(properties, '$.managementEndpoints') as "management_endpoints",
JSON_EXTRACT(properties, '$.databaseInstance') as "database_instance",
JSON_EXTRACT(properties, '$.domainController') as "domain_controller",
JSON_EXTRACT(properties, '$.domainUserCredentials') as "domain_user_credentials",
JSON_EXTRACT(properties, '$.gmsaDetails') as "gmsa_details",
JSON_EXTRACT(properties, '$.azureHybridBenefit') as "azure_hybrid_benefit",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.logAnalyticsProperties') as "log_analytics_properties",
JSON_EXTRACT(properties, '$.operationsStatus') as "operations_status",
subscriptionId,
resourceGroupName,
instanceName
FROM azure.scom.instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.productVersion') as "product_version",
json_extract_path_text(properties, '$.vNetSubnetId') as "vnet_subnet_id",
json_extract_path_text(properties, '$.managementEndpoints') as "management_endpoints",
json_extract_path_text(properties, '$.databaseInstance') as "database_instance",
json_extract_path_text(properties, '$.domainController') as "domain_controller",
json_extract_path_text(properties, '$.domainUserCredentials') as "domain_user_credentials",
json_extract_path_text(properties, '$.gmsaDetails') as "gmsa_details",
json_extract_path_text(properties, '$.azureHybridBenefit') as "azure_hybrid_benefit",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.logAnalyticsProperties') as "log_analytics_properties",
json_extract_path_text(properties, '$.operationsStatus') as "operations_status",
subscriptionId,
resourceGroupName,
instanceName
FROM azure.scom.instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
