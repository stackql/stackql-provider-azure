--- 
title: vw_protection_intents
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_protection_intents
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists a <code>vw_protection_intents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_protection_intents</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.vw_protection_intents" /></td></tr>
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
JSON_EXTRACT(properties, '$.protectionIntentItemType') as "protection_intent_item_type",
JSON_EXTRACT(properties, '$.backupManagementType') as "backup_management_type",
JSON_EXTRACT(properties, '$.sourceResourceId') as "source_resource_id",
JSON_EXTRACT(properties, '$.itemId') as "item_id",
JSON_EXTRACT(properties, '$.policyId') as "policy_id",
JSON_EXTRACT(properties, '$.protectionState') as "protection_state",
subscriptionId,
resourceGroupName,
vaultName,
fabricName,
intentObjectName
FROM azure.recovery_services_backup.protection_intents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND fabricName = 'replace-me' AND intentObjectName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.protectionIntentItemType') as "protection_intent_item_type",
json_extract_path_text(properties, '$.backupManagementType') as "backup_management_type",
json_extract_path_text(properties, '$.sourceResourceId') as "source_resource_id",
json_extract_path_text(properties, '$.itemId') as "item_id",
json_extract_path_text(properties, '$.policyId') as "policy_id",
json_extract_path_text(properties, '$.protectionState') as "protection_state",
subscriptionId,
resourceGroupName,
vaultName,
fabricName,
intentObjectName
FROM azure.recovery_services_backup.protection_intents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND fabricName = 'replace-me' AND intentObjectName = 'replace-me';
```

</TabItem>
</Tabs>
