--- 
title: vw_storage_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_storage_services
  - storage_admin
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

Creates, updates, deletes, gets or lists a <code>vw_storage_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_storage_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.storage_admin.vw_storage_services" /></td></tr>
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
JSON_EXTRACT(properties, '$.serviceName') as "service_name",
subscriptionId,
resourceGroup,
serviceName
FROM azure_stack.storage_admin.storage_services
WHERE subscriptionId = 'replace-me' AND resourceGroup = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.serviceName') as "service_name",
subscriptionId,
resourceGroup,
serviceName
FROM azure_stack.storage_admin.storage_services
WHERE subscriptionId = 'replace-me' AND resourceGroup = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
