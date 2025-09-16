--- 
title: vw_device_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_device_groups
  - sphere
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

Creates, updates, deletes, gets or lists a <code>vw_device_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_device_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sphere.vw_device_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.osFeedType') as "os_feed_type",
JSON_EXTRACT(properties, '$.updatePolicy') as "update_policy",
JSON_EXTRACT(properties, '$.allowCrashDumpsCollection') as "allow_crash_dumps_collection",
JSON_EXTRACT(properties, '$.regionalDataBoundary') as "regional_data_boundary",
JSON_EXTRACT(properties, '$.hasDeployment') as "has_deployment",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
catalogName,
productName,
deviceGroupName
FROM azure.sphere.device_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me' AND productName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.osFeedType') as "os_feed_type",
json_extract_path_text(properties, '$.updatePolicy') as "update_policy",
json_extract_path_text(properties, '$.allowCrashDumpsCollection') as "allow_crash_dumps_collection",
json_extract_path_text(properties, '$.regionalDataBoundary') as "regional_data_boundary",
json_extract_path_text(properties, '$.hasDeployment') as "has_deployment",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
catalogName,
productName,
deviceGroupName
FROM azure.sphere.device_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me' AND productName = 'replace-me';
```

</TabItem>
</Tabs>
