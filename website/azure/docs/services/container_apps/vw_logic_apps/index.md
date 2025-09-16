--- 
title: vw_logic_apps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_logic_apps
  - container_apps
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

Creates, updates, deletes, gets or lists a <code>vw_logic_apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_logic_apps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.vw_logic_apps" /></td></tr>
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
subscriptionId,
resourceGroupName,
containerAppName,
logicAppName
FROM azure.container_apps.logic_apps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND containerAppName = 'replace-me' AND logicAppName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
subscriptionId,
resourceGroupName,
containerAppName,
logicAppName
FROM azure.container_apps.logic_apps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND containerAppName = 'replace-me' AND logicAppName = 'replace-me';
```

</TabItem>
</Tabs>
