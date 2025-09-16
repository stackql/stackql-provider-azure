--- 
title: vw_transforms
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_transforms
  - media_services
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

Creates, updates, deletes, gets or lists a <code>vw_transforms</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_transforms</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.vw_transforms" /></td></tr>
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
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
JSON_EXTRACT(properties, '$.outputs') as "outputs",
subscriptionId,
resourceGroupName,
accountName,
transformName
FROM azure.media_services.transforms
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
json_extract_path_text(properties, '$.outputs') as "outputs",
subscriptionId,
resourceGroupName,
accountName,
transformName
FROM azure.media_services.transforms
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
