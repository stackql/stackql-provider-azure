--- 
title: vw_access_control_lists
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_access_control_lists
  - managed_network_fabric
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

Creates, updates, deletes, gets or lists a <code>vw_access_control_lists</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_access_control_lists</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_access_control_lists" /></td></tr>
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
JSON_EXTRACT(properties, '$.annotation') as "annotation",
JSON_EXTRACT(properties, '$.configurationType') as "configuration_type",
JSON_EXTRACT(properties, '$.aclsUrl') as "acls_url",
JSON_EXTRACT(properties, '$.defaultAction') as "default_action",
JSON_EXTRACT(properties, '$.matchConfigurations') as "match_configurations",
JSON_EXTRACT(properties, '$.dynamicMatchConfigurations') as "dynamic_match_configurations",
JSON_EXTRACT(properties, '$.lastSyncedTime') as "last_synced_time",
JSON_EXTRACT(properties, '$.configurationState') as "configuration_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
accessControlListName
FROM azure.managed_network_fabric.access_control_lists
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.annotation') as "annotation",
json_extract_path_text(properties, '$.configurationType') as "configuration_type",
json_extract_path_text(properties, '$.aclsUrl') as "acls_url",
json_extract_path_text(properties, '$.defaultAction') as "default_action",
json_extract_path_text(properties, '$.matchConfigurations') as "match_configurations",
json_extract_path_text(properties, '$.dynamicMatchConfigurations') as "dynamic_match_configurations",
json_extract_path_text(properties, '$.lastSyncedTime') as "last_synced_time",
json_extract_path_text(properties, '$.configurationState') as "configuration_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
accessControlListName
FROM azure.managed_network_fabric.access_control_lists
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
