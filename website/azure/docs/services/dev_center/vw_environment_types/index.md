--- 
title: vw_environment_types
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_environment_types
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_environment_types</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_environment_types</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_environment_types" /></td></tr>
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
type as type,
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
devCenterName,
environmentTypeName
FROM azure.dev_center.environment_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
devCenterName,
environmentTypeName
FROM azure.dev_center.environment_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me';
```

</TabItem>
</Tabs>
