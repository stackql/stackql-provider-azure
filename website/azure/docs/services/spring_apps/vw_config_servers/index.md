--- 
title: vw_config_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_config_servers
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>vw_config_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_config_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_config_servers" /></td></tr>
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
JSON_EXTRACT(properties, '$.resourceRequests') as "resource_requests",
JSON_EXTRACT(properties, '$.instances') as "instances",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.enabledState') as "enabled_state",
JSON_EXTRACT(properties, '$.configServer') as "config_server",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.spring_apps.config_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceRequests') as "resource_requests",
json_extract_path_text(properties, '$.instances') as "instances",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.enabledState') as "enabled_state",
json_extract_path_text(properties, '$.configServer') as "config_server",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.spring_apps.config_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
