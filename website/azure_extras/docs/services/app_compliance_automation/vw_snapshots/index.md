--- 
title: vw_snapshots
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_snapshots
  - app_compliance_automation
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

Creates, updates, deletes, gets or lists a <code>vw_snapshots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_snapshots</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.app_compliance_automation.vw_snapshots" /></td></tr>
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
JSON_EXTRACT(properties, '$.snapshotName') as "snapshot_name",
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.reportProperties') as "report_properties",
JSON_EXTRACT(properties, '$.reportSystemData') as "report_system_data",
JSON_EXTRACT(properties, '$.complianceResults') as "compliance_results",
reportName,
snapshotName
FROM azure_extras.app_compliance_automation.snapshots
WHERE reportName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.snapshotName') as "snapshot_name",
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.reportProperties') as "report_properties",
json_extract_path_text(properties, '$.reportSystemData') as "report_system_data",
json_extract_path_text(properties, '$.complianceResults') as "compliance_results",
reportName,
snapshotName
FROM azure_extras.app_compliance_automation.snapshots
WHERE reportName = 'replace-me';
```

</TabItem>
</Tabs>
