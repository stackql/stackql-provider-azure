--- 
title: vw_replication_protection_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_protection_containers
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replication_protection_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_protection_containers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_protection_containers" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.fabricFriendlyName') as "fabric_friendly_name",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.fabricType') as "fabric_type",
JSON_EXTRACT(properties, '$.protectedItemCount') as "protected_item_count",
JSON_EXTRACT(properties, '$.pairingStatus') as "pairing_status",
JSON_EXTRACT(properties, '$.role') as "role",
JSON_EXTRACT(properties, '$.fabricSpecificDetails') as "fabric_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName
FROM azure.recovery_services_site_recovery.replication_protection_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.fabricFriendlyName') as "fabric_friendly_name",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.fabricType') as "fabric_type",
json_extract_path_text(properties, '$.protectedItemCount') as "protected_item_count",
json_extract_path_text(properties, '$.pairingStatus') as "pairing_status",
json_extract_path_text(properties, '$.role') as "role",
json_extract_path_text(properties, '$.fabricSpecificDetails') as "fabric_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName
FROM azure.recovery_services_site_recovery.replication_protection_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
