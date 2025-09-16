--- 
title: vw_diagnostics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_diagnostics
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

Creates, updates, deletes, gets or lists a <code>vw_diagnostics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_diagnostics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.help.vw_diagnostics" /></td></tr>
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
JSON_EXTRACT(properties, '$.globalParameters') as "global_parameters",
JSON_EXTRACT(properties, '$.insights') as "insights",
JSON_EXTRACT(properties, '$.acceptedAt') as "accepted_at",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.diagnostics') as "diagnostics",
scope,
diagnosticsResourceName
FROM azure_extras.help.diagnostics
WHERE scope = 'replace-me' AND diagnosticsResourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.globalParameters') as "global_parameters",
json_extract_path_text(properties, '$.insights') as "insights",
json_extract_path_text(properties, '$.acceptedAt') as "accepted_at",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.diagnostics') as "diagnostics",
scope,
diagnosticsResourceName
FROM azure_extras.help.diagnostics
WHERE scope = 'replace-me' AND diagnosticsResourceName = 'replace-me';
```

</TabItem>
</Tabs>
