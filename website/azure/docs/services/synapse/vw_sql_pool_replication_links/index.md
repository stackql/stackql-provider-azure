--- 
title: vw_sql_pool_replication_links
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_pool_replication_links
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_sql_pool_replication_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_pool_replication_links</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_sql_pool_replication_links" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.isTerminationAllowed') as "is_termination_allowed",
JSON_EXTRACT(properties, '$.replicationMode') as "replication_mode",
JSON_EXTRACT(properties, '$.partnerServer') as "partner_server",
JSON_EXTRACT(properties, '$.partnerDatabase') as "partner_database",
JSON_EXTRACT(properties, '$.partnerLocation') as "partner_location",
JSON_EXTRACT(properties, '$.role') as "role",
JSON_EXTRACT(properties, '$.partnerRole') as "partner_role",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.percentComplete') as "percent_complete",
JSON_EXTRACT(properties, '$.replicationState') as "replication_state",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
linkId
FROM azure.synapse.sql_pool_replication_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
type as type,
json_extract_path_text(properties, '$.isTerminationAllowed') as "is_termination_allowed",
json_extract_path_text(properties, '$.replicationMode') as "replication_mode",
json_extract_path_text(properties, '$.partnerServer') as "partner_server",
json_extract_path_text(properties, '$.partnerDatabase') as "partner_database",
json_extract_path_text(properties, '$.partnerLocation') as "partner_location",
json_extract_path_text(properties, '$.role') as "role",
json_extract_path_text(properties, '$.partnerRole') as "partner_role",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.percentComplete') as "percent_complete",
json_extract_path_text(properties, '$.replicationState') as "replication_state",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
linkId
FROM azure.synapse.sql_pool_replication_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me';
```

</TabItem>
</Tabs>
