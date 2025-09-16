--- 
title: vw_replication_vault_health
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_vault_health
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replication_vault_health</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_vault_health</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_vault_health" /></td></tr>
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
JSON_EXTRACT(properties, '$.vaultErrors') as "vault_errors",
JSON_EXTRACT(properties, '$.protectedItemsHealth') as "protected_items_health",
JSON_EXTRACT(properties, '$.fabricsHealth') as "fabrics_health",
JSON_EXTRACT(properties, '$.containersHealth') as "containers_health",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.recovery_services_site_recovery.replication_vault_health
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.vaultErrors') as "vault_errors",
json_extract_path_text(properties, '$.protectedItemsHealth') as "protected_items_health",
json_extract_path_text(properties, '$.fabricsHealth') as "fabrics_health",
json_extract_path_text(properties, '$.containersHealth') as "containers_health",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.recovery_services_site_recovery.replication_vault_health
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
