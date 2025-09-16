--- 
title: vw_replication_protection_container_mappings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_protection_container_mappings
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

Creates, updates, deletes, gets or lists a <code>vw_replication_protection_container_mappings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_protection_container_mappings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_protection_container_mappings" /></td></tr>
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
JSON_EXTRACT(properties, '$.targetProtectionContainerId') as "target_protection_container_id",
JSON_EXTRACT(properties, '$.targetProtectionContainerFriendlyName') as "target_protection_container_friendly_name",
JSON_EXTRACT(properties, '$.providerSpecificDetails') as "provider_specific_details",
JSON_EXTRACT(properties, '$.health') as "health",
JSON_EXTRACT(properties, '$.healthErrorDetails') as "health_error_details",
JSON_EXTRACT(properties, '$.policyId') as "policy_id",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.sourceProtectionContainerFriendlyName') as "source_protection_container_friendly_name",
JSON_EXTRACT(properties, '$.sourceFabricFriendlyName') as "source_fabric_friendly_name",
JSON_EXTRACT(properties, '$.targetFabricFriendlyName') as "target_fabric_friendly_name",
JSON_EXTRACT(properties, '$.policyFriendlyName') as "policy_friendly_name",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
mappingName
FROM azure.recovery_services_site_recovery.replication_protection_container_mappings
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
json_extract_path_text(properties, '$.targetProtectionContainerId') as "target_protection_container_id",
json_extract_path_text(properties, '$.targetProtectionContainerFriendlyName') as "target_protection_container_friendly_name",
json_extract_path_text(properties, '$.providerSpecificDetails') as "provider_specific_details",
json_extract_path_text(properties, '$.health') as "health",
json_extract_path_text(properties, '$.healthErrorDetails') as "health_error_details",
json_extract_path_text(properties, '$.policyId') as "policy_id",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.sourceProtectionContainerFriendlyName') as "source_protection_container_friendly_name",
json_extract_path_text(properties, '$.sourceFabricFriendlyName') as "source_fabric_friendly_name",
json_extract_path_text(properties, '$.targetFabricFriendlyName') as "target_fabric_friendly_name",
json_extract_path_text(properties, '$.policyFriendlyName') as "policy_friendly_name",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
mappingName
FROM azure.recovery_services_site_recovery.replication_protection_container_mappings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
