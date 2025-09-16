--- 
title: vw_builds
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_builds
  - container_apps
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

Creates, updates, deletes, gets or lists a <code>vw_builds</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_builds</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.vw_builds" /></td></tr>
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
JSON_EXTRACT(properties, '$.buildStatus') as "build_status",
JSON_EXTRACT(properties, '$.destinationContainerRegistry') as "destination_container_registry",
JSON_EXTRACT(properties, '$.configuration') as "configuration",
JSON_EXTRACT(properties, '$.logStreamEndpoint') as "log_stream_endpoint",
subscriptionId,
resourceGroupName,
containerAppName,
buildName
FROM azure.container_apps.builds
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND containerAppName = 'replace-me' AND buildName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.buildStatus') as "build_status",
json_extract_path_text(properties, '$.destinationContainerRegistry') as "destination_container_registry",
json_extract_path_text(properties, '$.configuration') as "configuration",
json_extract_path_text(properties, '$.logStreamEndpoint') as "log_stream_endpoint",
subscriptionId,
resourceGroupName,
containerAppName,
buildName
FROM azure.container_apps.builds
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND containerAppName = 'replace-me' AND buildName = 'replace-me';
```

</TabItem>
</Tabs>
