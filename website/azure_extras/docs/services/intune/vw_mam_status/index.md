--- 
title: vw_mam_status
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_mam_status
  - intune
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

Creates, updates, deletes, gets or lists a <code>vw_mam_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_mam_status</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.intune.vw_mam_status" /></td></tr>
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
nextlink as nextlink,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.deployedPolicies') as "deployed_policies",
JSON_EXTRACT(properties, '$.enrolledUsers') as "enrolled_users",
JSON_EXTRACT(properties, '$.flaggedUsers') as "flagged_users",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.policyAppliedUsers') as "policy_applied_users",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.wipeFailedApps') as "wipe_failed_apps",
JSON_EXTRACT(properties, '$.wipePendingApps') as "wipe_pending_apps",
JSON_EXTRACT(properties, '$.wipeSucceededApps') as "wipe_succeeded_apps",
hostName
FROM azure_extras.intune.mam_status
WHERE hostName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
nextlink as nextlink,
type as type,
tags as tags,
json_extract_path_text(properties, '$.deployedPolicies') as "deployed_policies",
json_extract_path_text(properties, '$.enrolledUsers') as "enrolled_users",
json_extract_path_text(properties, '$.flaggedUsers') as "flagged_users",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.policyAppliedUsers') as "policy_applied_users",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.wipeFailedApps') as "wipe_failed_apps",
json_extract_path_text(properties, '$.wipePendingApps') as "wipe_pending_apps",
json_extract_path_text(properties, '$.wipeSucceededApps') as "wipe_succeeded_apps",
hostName
FROM azure_extras.intune.mam_status
WHERE hostName = 'replace-me';
```

</TabItem>
</Tabs>
