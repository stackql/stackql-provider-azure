--- 
title: vw_replication_protectable_items
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_protectable_items
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

Creates, updates, deletes, gets or lists a <code>vw_replication_protectable_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_protectable_items</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_protectable_items" /></td></tr>
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
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.protectionStatus') as "protection_status",
JSON_EXTRACT(properties, '$.replicationProtectedItemId') as "replication_protected_item_id",
JSON_EXTRACT(properties, '$.recoveryServicesProviderId') as "recovery_services_provider_id",
JSON_EXTRACT(properties, '$.protectionReadinessErrors') as "protection_readiness_errors",
JSON_EXTRACT(properties, '$.supportedReplicationProviders') as "supported_replication_providers",
JSON_EXTRACT(properties, '$.customDetails') as "custom_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
protectableItemName
FROM azure.recovery_services_site_recovery.replication_protectable_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND fabricName = 'replace-me' AND protectionContainerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.protectionStatus') as "protection_status",
json_extract_path_text(properties, '$.replicationProtectedItemId') as "replication_protected_item_id",
json_extract_path_text(properties, '$.recoveryServicesProviderId') as "recovery_services_provider_id",
json_extract_path_text(properties, '$.protectionReadinessErrors') as "protection_readiness_errors",
json_extract_path_text(properties, '$.supportedReplicationProviders') as "supported_replication_providers",
json_extract_path_text(properties, '$.customDetails') as "custom_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
protectableItemName
FROM azure.recovery_services_site_recovery.replication_protectable_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND fabricName = 'replace-me' AND protectionContainerName = 'replace-me';
```

</TabItem>
</Tabs>
