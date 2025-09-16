--- 
title: vw_server_trust_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_server_trust_groups
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_server_trust_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_server_trust_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_server_trust_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.groupMembers') as "group_members",
JSON_EXTRACT(properties, '$.trustScopes') as "trust_scopes",
subscriptionId,
resourceGroupName,
locationName,
serverTrustGroupName
FROM azure.sql.server_trust_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.groupMembers') as "group_members",
json_extract_path_text(properties, '$.trustScopes') as "trust_scopes",
subscriptionId,
resourceGroupName,
locationName,
serverTrustGroupName
FROM azure.sql.server_trust_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
</Tabs>
