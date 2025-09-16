--- 
title: vw_job_private_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_job_private_endpoints
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

Creates, updates, deletes, gets or lists a <code>vw_job_private_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_job_private_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_job_private_endpoints" /></td></tr>
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
JSON_EXTRACT(properties, '$.targetServerAzureResourceId') as "target_server_azure_resource_id",
JSON_EXTRACT(properties, '$.privateEndpointId') as "private_endpoint_id",
subscriptionId,
resourceGroupName,
serverName,
jobAgentName,
privateEndpointName
FROM azure.sql.job_private_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND jobAgentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.targetServerAzureResourceId') as "target_server_azure_resource_id",
json_extract_path_text(properties, '$.privateEndpointId') as "private_endpoint_id",
subscriptionId,
resourceGroupName,
serverName,
jobAgentName,
privateEndpointName
FROM azure.sql.job_private_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND jobAgentName = 'replace-me';
```

</TabItem>
</Tabs>
