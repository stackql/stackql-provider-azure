--- 
title: vw_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_containers
  - fluid_relay
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

Creates, updates, deletes, gets or lists a <code>vw_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_containers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.fluid_relay.vw_containers" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.frsTenantId') as "frs_tenant_id",
JSON_EXTRACT(properties, '$.frsContainerId') as "frs_container_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastAccessTime') as "last_access_time",
subscriptionId,
resourceGroup,
fluidRelayServerName,
fluidRelayContainerName
FROM azure.fluid_relay.containers
WHERE subscriptionId = 'replace-me' AND resourceGroup = 'replace-me' AND fluidRelayServerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.frsTenantId') as "frs_tenant_id",
json_extract_path_text(properties, '$.frsContainerId') as "frs_container_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastAccessTime') as "last_access_time",
subscriptionId,
resourceGroup,
fluidRelayServerName,
fluidRelayContainerName
FROM azure.fluid_relay.containers
WHERE subscriptionId = 'replace-me' AND resourceGroup = 'replace-me' AND fluidRelayServerName = 'replace-me';
```

</TabItem>
</Tabs>
