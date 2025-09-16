--- 
title: vw_server_threat_protection_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_server_threat_protection_settings
  - postgresql
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

Creates, updates, deletes, gets or lists a <code>vw_server_threat_protection_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_server_threat_protection_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql.vw_server_threat_protection_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
subscriptionId,
resourceGroupName,
serverName,
threatProtectionName
FROM azure.postgresql.server_threat_protection_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
subscriptionId,
resourceGroupName,
serverName,
threatProtectionName
FROM azure.postgresql.server_threat_protection_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
