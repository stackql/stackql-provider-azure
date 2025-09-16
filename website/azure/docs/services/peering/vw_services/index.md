--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
  - peering
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

Creates, updates, deletes, gets or lists a <code>vw_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.vw_services" /></td></tr>
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
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.peeringServiceLocation') as "peering_service_location",
JSON_EXTRACT(properties, '$.peeringServiceProvider') as "peering_service_provider",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.providerPrimaryPeeringLocation') as "provider_primary_peering_location",
JSON_EXTRACT(properties, '$.providerBackupPeeringLocation') as "provider_backup_peering_location",
JSON_EXTRACT(properties, '$.logAnalyticsWorkspaceProperties') as "log_analytics_workspace_properties",
subscriptionId,
resourceGroupName,
peeringServiceName
FROM azure.peering.services
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
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.peeringServiceLocation') as "peering_service_location",
json_extract_path_text(properties, '$.peeringServiceProvider') as "peering_service_provider",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.providerPrimaryPeeringLocation') as "provider_primary_peering_location",
json_extract_path_text(properties, '$.providerBackupPeeringLocation') as "provider_backup_peering_location",
json_extract_path_text(properties, '$.logAnalyticsWorkspaceProperties') as "log_analytics_workspace_properties",
subscriptionId,
resourceGroupName,
peeringServiceName
FROM azure.peering.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
