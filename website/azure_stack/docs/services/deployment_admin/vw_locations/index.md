--- 
title: vw_locations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_locations
  - deployment_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_locations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_locations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.deployment_admin.vw_locations" /></td></tr>
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
eTag as e_tag,
type as type,
JSON_EXTRACT(properties, '$.location') as "location",
subscriptionId
FROM azure_stack.deployment_admin.locations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
eTag as e_tag,
type as type,
json_extract_path_text(properties, '$.location') as "location",
subscriptionId
FROM azure_stack.deployment_admin.locations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
