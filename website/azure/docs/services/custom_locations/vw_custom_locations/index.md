--- 
title: vw_custom_locations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_custom_locations
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

Creates, updates, deletes, gets or lists a <code>vw_custom_locations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_custom_locations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.custom_locations.vw_custom_locations" /></td></tr>
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
identity as identity,
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.authentication') as "authentication",
JSON_EXTRACT(properties, '$.clusterExtensionIds') as "cluster_extension_ids",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.hostResourceId') as "host_resource_id",
JSON_EXTRACT(properties, '$.hostType') as "host_type",
JSON_EXTRACT(properties, '$.namespace') as "namespace",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.custom_locations.custom_locations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.authentication') as "authentication",
json_extract_path_text(properties, '$.clusterExtensionIds') as "cluster_extension_ids",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.hostResourceId') as "host_resource_id",
json_extract_path_text(properties, '$.hostType') as "host_type",
json_extract_path_text(properties, '$.namespace') as "namespace",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.custom_locations.custom_locations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
