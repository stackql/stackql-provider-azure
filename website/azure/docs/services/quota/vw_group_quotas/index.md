--- 
title: vw_group_quotas
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_group_quotas
  - quota
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

Creates, updates, deletes, gets or lists a <code>vw_group_quotas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_group_quotas</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.quota.vw_group_quotas" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.additionalAttributes') as "additional_attributes",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
managementGroupId,
groupQuotaName
FROM azure.quota.group_quotas
WHERE managementGroupId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.additionalAttributes') as "additional_attributes",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
managementGroupId,
groupQuotaName
FROM azure.quota.group_quotas
WHERE managementGroupId = 'replace-me';
```

</TabItem>
</Tabs>
