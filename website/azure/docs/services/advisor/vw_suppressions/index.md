--- 
title: vw_suppressions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_suppressions
  - advisor
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

Creates, updates, deletes, gets or lists a <code>vw_suppressions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_suppressions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.advisor.vw_suppressions" /></td></tr>
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
JSON_EXTRACT(properties, '$.suppressionId') as "suppression_id",
JSON_EXTRACT(properties, '$.ttl') as "ttl",
JSON_EXTRACT(properties, '$.expirationTimeStamp') as "expiration_time_stamp",
resourceUri,
recommendationId,
name,
subscriptionId
FROM azure.advisor.suppressions
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
json_extract_path_text(properties, '$.suppressionId') as "suppression_id",
json_extract_path_text(properties, '$.ttl') as "ttl",
json_extract_path_text(properties, '$.expirationTimeStamp') as "expiration_time_stamp",
resourceUri,
recommendationId,
name,
subscriptionId
FROM azure.advisor.suppressions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
