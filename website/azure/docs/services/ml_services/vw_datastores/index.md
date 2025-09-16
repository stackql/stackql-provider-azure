--- 
title: vw_datastores
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_datastores
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_datastores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_datastores</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_datastores" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.properties') as "properties",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.credentials') as "credentials",
JSON_EXTRACT(properties, '$.datastoreType') as "datastore_type",
JSON_EXTRACT(properties, '$.isDefault') as "is_default",
subscriptionId,
resourceGroupName,
workspaceName,
name
FROM azure.ml_services.datastores
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.properties') as "properties",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.credentials') as "credentials",
json_extract_path_text(properties, '$.datastoreType') as "datastore_type",
json_extract_path_text(properties, '$.isDefault') as "is_default",
subscriptionId,
resourceGroupName,
workspaceName,
name
FROM azure.ml_services.datastores
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
