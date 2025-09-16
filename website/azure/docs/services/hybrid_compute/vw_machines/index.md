--- 
title: vw_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_machines
  - hybrid_compute
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

Creates, updates, deletes, gets or lists a <code>vw_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_machines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_compute.vw_machines" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.osProfile') as "os_profile",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.lastStatusChange') as "last_status_change",
JSON_EXTRACT(properties, '$.errorDetails') as "error_details",
JSON_EXTRACT(properties, '$.agentVersion') as "agent_version",
JSON_EXTRACT(properties, '$.vmId') as "vm_id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.machineFqdn') as "machine_fqdn",
JSON_EXTRACT(properties, '$.physicalLocation') as "physical_location",
JSON_EXTRACT(properties, '$.clientPublicKey') as "client_public_key",
JSON_EXTRACT(properties, '$.osName') as "os_name",
JSON_EXTRACT(properties, '$.osVersion') as "os_version",
subscriptionId,
resourceGroupName,
name
FROM azure.hybrid_compute.machines
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
identity as identity,
json_extract_path_text(properties, '$.osProfile') as "os_profile",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.lastStatusChange') as "last_status_change",
json_extract_path_text(properties, '$.errorDetails') as "error_details",
json_extract_path_text(properties, '$.agentVersion') as "agent_version",
json_extract_path_text(properties, '$.vmId') as "vm_id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.machineFqdn') as "machine_fqdn",
json_extract_path_text(properties, '$.physicalLocation') as "physical_location",
json_extract_path_text(properties, '$.clientPublicKey') as "client_public_key",
json_extract_path_text(properties, '$.osName') as "os_name",
json_extract_path_text(properties, '$.osVersion') as "os_version",
subscriptionId,
resourceGroupName,
name
FROM azure.hybrid_compute.machines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
