--- 
title: vw_bare_metal_machine_key_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_bare_metal_machine_key_sets
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

Creates, updates, deletes, gets or lists a <code>vw_bare_metal_machine_key_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_bare_metal_machine_key_sets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_bare_metal_machine_key_sets" /></td></tr>
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
JSON_EXTRACT(properties, '$.azureGroupId') as "azure_group_id",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.expiration') as "expiration",
JSON_EXTRACT(properties, '$.jumpHostsAllowed') as "jump_hosts_allowed",
JSON_EXTRACT(properties, '$.lastValidation') as "last_validation",
JSON_EXTRACT(properties, '$.osGroupName') as "os_group_name",
JSON_EXTRACT(properties, '$.privilegeLevel') as "privilege_level",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.userList') as "user_list",
JSON_EXTRACT(properties, '$.userListStatus') as "user_list_status",
subscriptionId,
resourceGroupName,
clusterName,
bareMetalMachineKeySetName
FROM azure.nexus.bare_metal_machine_key_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.azureGroupId') as "azure_group_id",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.expiration') as "expiration",
json_extract_path_text(properties, '$.jumpHostsAllowed') as "jump_hosts_allowed",
json_extract_path_text(properties, '$.lastValidation') as "last_validation",
json_extract_path_text(properties, '$.osGroupName') as "os_group_name",
json_extract_path_text(properties, '$.privilegeLevel') as "privilege_level",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.userList') as "user_list",
json_extract_path_text(properties, '$.userListStatus') as "user_list_status",
subscriptionId,
resourceGroupName,
clusterName,
bareMetalMachineKeySetName
FROM azure.nexus.bare_metal_machine_key_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
