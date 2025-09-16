--- 
title: vw_roles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_roles
  - postgresql_hsc
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

Creates, updates, deletes, gets or lists a <code>vw_roles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_roles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql_hsc.vw_roles" /></td></tr>
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
JSON_EXTRACT(properties, '$.roleType') as "role_type",
JSON_EXTRACT(properties, '$.password') as "password",
JSON_EXTRACT(properties, '$.externalIdentity') as "external_identity",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
clusterName,
roleName
FROM azure.postgresql_hsc.roles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.roleType') as "role_type",
json_extract_path_text(properties, '$.password') as "password",
json_extract_path_text(properties, '$.externalIdentity') as "external_identity",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
clusterName,
roleName
FROM azure.postgresql_hsc.roles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
