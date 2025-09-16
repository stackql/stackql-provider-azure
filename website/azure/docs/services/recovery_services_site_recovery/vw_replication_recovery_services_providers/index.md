--- 
title: vw_replication_recovery_services_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_recovery_services_providers
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

Creates, updates, deletes, gets or lists a <code>vw_replication_recovery_services_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_recovery_services_providers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_recovery_services_providers" /></td></tr>
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
JSON_EXTRACT(properties, '$.fabricType') as "fabric_type",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.providerVersion') as "provider_version",
JSON_EXTRACT(properties, '$.serverVersion') as "server_version",
JSON_EXTRACT(properties, '$.providerVersionState') as "provider_version_state",
JSON_EXTRACT(properties, '$.providerVersionExpiryDate') as "provider_version_expiry_date",
JSON_EXTRACT(properties, '$.fabricFriendlyName') as "fabric_friendly_name",
JSON_EXTRACT(properties, '$.lastHeartBeat') as "last_heart_beat",
JSON_EXTRACT(properties, '$.connectionStatus') as "connection_status",
JSON_EXTRACT(properties, '$.protectedItemCount') as "protected_item_count",
JSON_EXTRACT(properties, '$.allowedScenarios') as "allowed_scenarios",
JSON_EXTRACT(properties, '$.healthErrorDetails') as "health_error_details",
JSON_EXTRACT(properties, '$.draIdentifier') as "dra_identifier",
JSON_EXTRACT(properties, '$.machineId') as "machine_id",
JSON_EXTRACT(properties, '$.machineName') as "machine_name",
JSON_EXTRACT(properties, '$.biosId') as "bios_id",
JSON_EXTRACT(properties, '$.authenticationIdentityDetails') as "authentication_identity_details",
JSON_EXTRACT(properties, '$.resourceAccessIdentityDetails') as "resource_access_identity_details",
JSON_EXTRACT(properties, '$.dataPlaneAuthenticationIdentityDetails') as "data_plane_authentication_identity_details",
JSON_EXTRACT(properties, '$.providerVersionDetails') as "provider_version_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
providerName
FROM azure.recovery_services_site_recovery.replication_recovery_services_providers
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
json_extract_path_text(properties, '$.fabricType') as "fabric_type",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.providerVersion') as "provider_version",
json_extract_path_text(properties, '$.serverVersion') as "server_version",
json_extract_path_text(properties, '$.providerVersionState') as "provider_version_state",
json_extract_path_text(properties, '$.providerVersionExpiryDate') as "provider_version_expiry_date",
json_extract_path_text(properties, '$.fabricFriendlyName') as "fabric_friendly_name",
json_extract_path_text(properties, '$.lastHeartBeat') as "last_heart_beat",
json_extract_path_text(properties, '$.connectionStatus') as "connection_status",
json_extract_path_text(properties, '$.protectedItemCount') as "protected_item_count",
json_extract_path_text(properties, '$.allowedScenarios') as "allowed_scenarios",
json_extract_path_text(properties, '$.healthErrorDetails') as "health_error_details",
json_extract_path_text(properties, '$.draIdentifier') as "dra_identifier",
json_extract_path_text(properties, '$.machineId') as "machine_id",
json_extract_path_text(properties, '$.machineName') as "machine_name",
json_extract_path_text(properties, '$.biosId') as "bios_id",
json_extract_path_text(properties, '$.authenticationIdentityDetails') as "authentication_identity_details",
json_extract_path_text(properties, '$.resourceAccessIdentityDetails') as "resource_access_identity_details",
json_extract_path_text(properties, '$.dataPlaneAuthenticationIdentityDetails') as "data_plane_authentication_identity_details",
json_extract_path_text(properties, '$.providerVersionDetails') as "provider_version_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
providerName
FROM azure.recovery_services_site_recovery.replication_recovery_services_providers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
