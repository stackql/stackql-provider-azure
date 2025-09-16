--- 
title: vw_object_replication_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_object_replication_policies
  - storage
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

Creates, updates, deletes, gets or lists a <code>vw_object_replication_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_object_replication_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.vw_object_replication_policies" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.policyId') as "policy_id",
JSON_EXTRACT(properties, '$.enabledTime') as "enabled_time",
JSON_EXTRACT(properties, '$.sourceAccount') as "source_account",
JSON_EXTRACT(properties, '$.destinationAccount') as "destination_account",
JSON_EXTRACT(properties, '$.rules') as "rules",
subscriptionId,
resourceGroupName,
accountName,
objectReplicationPolicyId
FROM azure.storage.object_replication_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.policyId') as "policy_id",
json_extract_path_text(properties, '$.enabledTime') as "enabled_time",
json_extract_path_text(properties, '$.sourceAccount') as "source_account",
json_extract_path_text(properties, '$.destinationAccount') as "destination_account",
json_extract_path_text(properties, '$.rules') as "rules",
subscriptionId,
resourceGroupName,
accountName,
objectReplicationPolicyId
FROM azure.storage.object_replication_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
