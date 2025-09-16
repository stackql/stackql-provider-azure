--- 
title: vw_replication_logical_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_logical_networks
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

Creates, updates, deletes, gets or lists a <code>vw_replication_logical_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_logical_networks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_logical_networks" /></td></tr>
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
JSON_EXTRACT(properties, '$.networkVirtualizationStatus') as "network_virtualization_status",
JSON_EXTRACT(properties, '$.logicalNetworkUsage') as "logical_network_usage",
JSON_EXTRACT(properties, '$.logicalNetworkDefinitionsStatus') as "logical_network_definitions_status",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
logicalNetworkName
FROM azure.recovery_services_site_recovery.replication_logical_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND fabricName = 'replace-me';
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
json_extract_path_text(properties, '$.networkVirtualizationStatus') as "network_virtualization_status",
json_extract_path_text(properties, '$.logicalNetworkUsage') as "logical_network_usage",
json_extract_path_text(properties, '$.logicalNetworkDefinitionsStatus') as "logical_network_definitions_status",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
logicalNetworkName
FROM azure.recovery_services_site_recovery.replication_logical_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND fabricName = 'replace-me';
```

</TabItem>
</Tabs>
