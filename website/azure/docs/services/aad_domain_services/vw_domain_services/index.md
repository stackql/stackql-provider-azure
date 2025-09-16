--- 
title: vw_domain_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_domain_services
  - aad_domain_services
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

Creates, updates, deletes, gets or lists a <code>vw_domain_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_domain_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aad_domain_services.vw_domain_services" /></td></tr>
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
tags as tags,
etag as etag,
systemData as system_data,
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.domainName') as "domain_name",
JSON_EXTRACT(properties, '$.deploymentId') as "deployment_id",
JSON_EXTRACT(properties, '$.syncOwner') as "sync_owner",
JSON_EXTRACT(properties, '$.syncApplicationId') as "sync_application_id",
JSON_EXTRACT(properties, '$.replicaSets') as "replica_sets",
JSON_EXTRACT(properties, '$.ldapsSettings') as "ldaps_settings",
JSON_EXTRACT(properties, '$.resourceForestSettings') as "resource_forest_settings",
JSON_EXTRACT(properties, '$.domainSecuritySettings') as "domain_security_settings",
JSON_EXTRACT(properties, '$.domainConfigurationType') as "domain_configuration_type",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.filteredSync') as "filtered_sync",
JSON_EXTRACT(properties, '$.syncScope') as "sync_scope",
JSON_EXTRACT(properties, '$.notificationSettings') as "notification_settings",
JSON_EXTRACT(properties, '$.migrationProperties') as "migration_properties",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.configDiagnostics') as "config_diagnostics",
subscriptionId,
resourceGroupName,
domainServiceName
FROM azure.aad_domain_services.domain_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
etag as etag,
systemData as system_data,
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.domainName') as "domain_name",
json_extract_path_text(properties, '$.deploymentId') as "deployment_id",
json_extract_path_text(properties, '$.syncOwner') as "sync_owner",
json_extract_path_text(properties, '$.syncApplicationId') as "sync_application_id",
json_extract_path_text(properties, '$.replicaSets') as "replica_sets",
json_extract_path_text(properties, '$.ldapsSettings') as "ldaps_settings",
json_extract_path_text(properties, '$.resourceForestSettings') as "resource_forest_settings",
json_extract_path_text(properties, '$.domainSecuritySettings') as "domain_security_settings",
json_extract_path_text(properties, '$.domainConfigurationType') as "domain_configuration_type",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.filteredSync') as "filtered_sync",
json_extract_path_text(properties, '$.syncScope') as "sync_scope",
json_extract_path_text(properties, '$.notificationSettings') as "notification_settings",
json_extract_path_text(properties, '$.migrationProperties') as "migration_properties",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.configDiagnostics') as "config_diagnostics",
subscriptionId,
resourceGroupName,
domainServiceName
FROM azure.aad_domain_services.domain_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
