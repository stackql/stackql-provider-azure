--- 
title: vw_consoles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_consoles
  - nexus
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

Creates, updates, deletes, gets or lists a <code>vw_consoles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_consoles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_consoles" /></td></tr>
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
location as location,
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.expiration') as "expiration",
JSON_EXTRACT(properties, '$.privateLinkServiceId') as "private_link_service_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sshPublicKey') as "ssh_public_key",
JSON_EXTRACT(properties, '$.virtualMachineAccessId') as "virtual_machine_access_id",
subscriptionId,
resourceGroupName,
virtualMachineName,
consoleName
FROM azure.nexus.consoles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualMachineName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.expiration') as "expiration",
json_extract_path_text(properties, '$.privateLinkServiceId') as "private_link_service_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sshPublicKey') as "ssh_public_key",
json_extract_path_text(properties, '$.virtualMachineAccessId') as "virtual_machine_access_id",
subscriptionId,
resourceGroupName,
virtualMachineName,
consoleName
FROM azure.nexus.consoles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualMachineName = 'replace-me';
```

</TabItem>
</Tabs>
