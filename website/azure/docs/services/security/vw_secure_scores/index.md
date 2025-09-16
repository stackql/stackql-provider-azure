--- 
title: vw_secure_scores
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_secure_scores
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_secure_scores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_secure_scores</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_secure_scores" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.score') as "score",
JSON_EXTRACT(properties, '$.weight') as "weight",
subscriptionId,
secureScoreName
FROM azure.security.secure_scores
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.score') as "score",
json_extract_path_text(properties, '$.weight') as "weight",
subscriptionId,
secureScoreName
FROM azure.security.secure_scores
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
