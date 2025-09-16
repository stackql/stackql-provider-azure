--- 
title: vw_tenant_accesses
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tenant_accesses
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_tenant_accesses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tenant_accesses</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_tenant_accesses" /></td></tr>
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
JSON_EXTRACT(properties, '$.id') as "id",
JSON_EXTRACT(properties, '$.principalId') as "principal_id",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
subscriptionId,
resourceGroupName,
serviceName,
accessName
FROM azure.api_management.tenant_accesses
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.id') as "id",
json_extract_path_text(properties, '$.principalId') as "principal_id",
json_extract_path_text(properties, '$.enabled') as "enabled",
subscriptionId,
resourceGroupName,
serviceName,
accessName
FROM azure.api_management.tenant_accesses
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
