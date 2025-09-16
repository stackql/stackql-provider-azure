--- 
title: vw_failover_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_failover_groups
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

Creates, updates, deletes, gets or lists a <code>vw_failover_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_failover_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_failover_groups" /></td></tr>
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
location as location,
tags as tags,
JSON_EXTRACT(properties, '$.readWriteEndpoint') as "read_write_endpoint",
JSON_EXTRACT(properties, '$.readOnlyEndpoint') as "read_only_endpoint",
JSON_EXTRACT(properties, '$.replicationRole') as "replication_role",
JSON_EXTRACT(properties, '$.replicationState') as "replication_state",
JSON_EXTRACT(properties, '$.partnerServers') as "partner_servers",
JSON_EXTRACT(properties, '$.databases') as "databases",
JSON_EXTRACT(properties, '$.secondaryType') as "secondary_type",
subscriptionId,
resourceGroupName,
serverName,
failoverGroupName
FROM azure.sql.failover_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.readWriteEndpoint') as "read_write_endpoint",
json_extract_path_text(properties, '$.readOnlyEndpoint') as "read_only_endpoint",
json_extract_path_text(properties, '$.replicationRole') as "replication_role",
json_extract_path_text(properties, '$.replicationState') as "replication_state",
json_extract_path_text(properties, '$.partnerServers') as "partner_servers",
json_extract_path_text(properties, '$.databases') as "databases",
json_extract_path_text(properties, '$.secondaryType') as "secondary_type",
subscriptionId,
resourceGroupName,
serverName,
failoverGroupName
FROM azure.sql.failover_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
