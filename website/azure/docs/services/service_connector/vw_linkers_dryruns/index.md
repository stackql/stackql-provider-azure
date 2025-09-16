--- 
title: vw_linkers_dryruns
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_linkers_dryruns
  - service_connector
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

Creates, updates, deletes, gets or lists a <code>vw_linkers_dryruns</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_linkers_dryruns</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_connector.vw_linkers_dryruns" /></td></tr>
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
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.prerequisiteResults') as "prerequisite_results",
JSON_EXTRACT(properties, '$.operationPreviews') as "operation_previews",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
resourceUri,
dryrunName
FROM azure.service_connector.linkers_dryruns
WHERE resourceUri = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.prerequisiteResults') as "prerequisite_results",
json_extract_path_text(properties, '$.operationPreviews') as "operation_previews",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
resourceUri,
dryrunName
FROM azure.service_connector.linkers_dryruns
WHERE resourceUri = 'replace-me';
```

</TabItem>
</Tabs>
