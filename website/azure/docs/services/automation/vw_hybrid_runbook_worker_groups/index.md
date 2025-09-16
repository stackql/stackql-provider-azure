--- 
title: vw_hybrid_runbook_worker_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hybrid_runbook_worker_groups
  - automation
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

Creates, updates, deletes, gets or lists a <code>vw_hybrid_runbook_worker_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hybrid_runbook_worker_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_hybrid_runbook_worker_groups" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.groupType') as "group_type",
JSON_EXTRACT(properties, '$.credential') as "credential",
subscriptionId,
resourceGroupName,
automationAccountName,
hybridRunbookWorkerGroupName
FROM azure.automation.hybrid_runbook_worker_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.groupType') as "group_type",
json_extract_path_text(properties, '$.credential') as "credential",
subscriptionId,
resourceGroupName,
automationAccountName,
hybridRunbookWorkerGroupName
FROM azure.automation.hybrid_runbook_worker_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
