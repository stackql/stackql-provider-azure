--- 
title: vw_troubleshooters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_troubleshooters
  - help
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_troubleshooters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_troubleshooters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.help.vw_troubleshooters" /></td></tr>
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
JSON_EXTRACT(properties, '$.solutionId') as "solution_id",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.steps') as "steps",
scope,
troubleshooterName
FROM azure_extras.help.troubleshooters
WHERE scope = 'replace-me' AND troubleshooterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.solutionId') as "solution_id",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.steps') as "steps",
scope,
troubleshooterName
FROM azure_extras.help.troubleshooters
WHERE scope = 'replace-me' AND troubleshooterName = 'replace-me';
```

</TabItem>
</Tabs>
