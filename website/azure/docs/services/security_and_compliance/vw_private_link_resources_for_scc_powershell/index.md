--- 
title: vw_private_link_resources_for_scc_powershell
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_link_resources_for_scc_powershell
  - security_and_compliance
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

Creates, updates, deletes, gets or lists a <code>vw_private_link_resources_for_scc_powershell</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_link_resources_for_scc_powershell</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security_and_compliance.vw_private_link_resources_for_scc_powershell" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.groupId') as "group_id",
JSON_EXTRACT(properties, '$.requiredMembers') as "required_members",
JSON_EXTRACT(properties, '$.requiredZoneNames') as "required_zone_names",
subscriptionId,
resourceGroupName,
resourceName,
groupName
FROM azure.security_and_compliance.private_link_resources_for_scc_powershell
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.groupId') as "group_id",
json_extract_path_text(properties, '$.requiredMembers') as "required_members",
json_extract_path_text(properties, '$.requiredZoneNames') as "required_zone_names",
subscriptionId,
resourceGroupName,
resourceName,
groupName
FROM azure.security_and_compliance.private_link_resources_for_scc_powershell
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
