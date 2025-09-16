--- 
title: vw_resource_sync_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_resource_sync_rules
  - custom_locations
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

Creates, updates, deletes, gets or lists a <code>vw_resource_sync_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_resource_sync_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.custom_locations.vw_resource_sync_rules" /></td></tr>
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
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.selector') as "selector",
JSON_EXTRACT(properties, '$.targetResourceGroup') as "target_resource_group",
subscriptionId,
resourceGroupName,
resourceName,
childResourceName
FROM azure.custom_locations.resource_sync_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.selector') as "selector",
json_extract_path_text(properties, '$.targetResourceGroup') as "target_resource_group",
subscriptionId,
resourceGroupName,
resourceName,
childResourceName
FROM azure.custom_locations.resource_sync_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
