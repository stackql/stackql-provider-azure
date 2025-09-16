--- 
title: vw_galleries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_galleries
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_galleries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_galleries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_galleries" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.identifier') as "identifier",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sharingProfile') as "sharing_profile",
JSON_EXTRACT(properties, '$.softDeletePolicy') as "soft_delete_policy",
JSON_EXTRACT(properties, '$.sharingStatus') as "sharing_status",
subscriptionId,
resourceGroupName,
galleryName
FROM azure.compute.galleries
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
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.identifier') as "identifier",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sharingProfile') as "sharing_profile",
json_extract_path_text(properties, '$.softDeletePolicy') as "soft_delete_policy",
json_extract_path_text(properties, '$.sharingStatus') as "sharing_status",
subscriptionId,
resourceGroupName,
galleryName
FROM azure.compute.galleries
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
