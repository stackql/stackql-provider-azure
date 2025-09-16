--- 
title: vw_instance_failover_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_instance_failover_groups
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

Creates, updates, deletes, gets or lists a <code>vw_instance_failover_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_instance_failover_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_instance_failover_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.secondaryType') as "secondary_type",
JSON_EXTRACT(properties, '$.readWriteEndpoint') as "read_write_endpoint",
JSON_EXTRACT(properties, '$.readOnlyEndpoint') as "read_only_endpoint",
JSON_EXTRACT(properties, '$.replicationRole') as "replication_role",
JSON_EXTRACT(properties, '$.replicationState') as "replication_state",
JSON_EXTRACT(properties, '$.partnerRegions') as "partner_regions",
JSON_EXTRACT(properties, '$.managedInstancePairs') as "managed_instance_pairs",
subscriptionId,
resourceGroupName,
locationName,
failoverGroupName
FROM azure.sql.instance_failover_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.secondaryType') as "secondary_type",
json_extract_path_text(properties, '$.readWriteEndpoint') as "read_write_endpoint",
json_extract_path_text(properties, '$.readOnlyEndpoint') as "read_only_endpoint",
json_extract_path_text(properties, '$.replicationRole') as "replication_role",
json_extract_path_text(properties, '$.replicationState') as "replication_state",
json_extract_path_text(properties, '$.partnerRegions') as "partner_regions",
json_extract_path_text(properties, '$.managedInstancePairs') as "managed_instance_pairs",
subscriptionId,
resourceGroupName,
locationName,
failoverGroupName
FROM azure.sql.instance_failover_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
</Tabs>
