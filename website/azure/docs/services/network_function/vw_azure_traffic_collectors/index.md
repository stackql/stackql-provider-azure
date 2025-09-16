--- 
title: vw_azure_traffic_collectors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_azure_traffic_collectors
  - network_function
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

Creates, updates, deletes, gets or lists a <code>vw_azure_traffic_collectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_azure_traffic_collectors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network_function.vw_azure_traffic_collectors" /></td></tr>
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
id as id,
name as name,
location as location,
etag as etag,
type as type,
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.collectorPolicies') as "collector_policies",
JSON_EXTRACT(properties, '$.virtualHub') as "virtual_hub",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
azureTrafficCollectorName
FROM azure.network_function.azure_traffic_collectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND azureTrafficCollectorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
etag as etag,
type as type,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.collectorPolicies') as "collector_policies",
json_extract_path_text(properties, '$.virtualHub') as "virtual_hub",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
azureTrafficCollectorName
FROM azure.network_function.azure_traffic_collectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND azureTrafficCollectorName = 'replace-me';
```

</TabItem>
</Tabs>
