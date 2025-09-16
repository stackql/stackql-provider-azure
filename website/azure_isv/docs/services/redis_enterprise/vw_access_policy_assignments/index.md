--- 
title: vw_access_policy_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_access_policy_assignments
  - redis_enterprise
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_access_policy_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_access_policy_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis_enterprise.vw_access_policy_assignments" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.accessPolicyName') as "access_policy_name",
JSON_EXTRACT(properties, '$.user') as "user",
subscriptionId,
resourceGroupName,
clusterName,
databaseName,
accessPolicyAssignmentName
FROM azure_isv.redis_enterprise.access_policy_assignments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.accessPolicyName') as "access_policy_name",
json_extract_path_text(properties, '$.user') as "user",
subscriptionId,
resourceGroupName,
clusterName,
databaseName,
accessPolicyAssignmentName
FROM azure_isv.redis_enterprise.access_policy_assignments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
