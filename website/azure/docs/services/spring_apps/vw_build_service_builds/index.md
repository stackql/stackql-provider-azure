--- 
title: vw_build_service_builds
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_build_service_builds
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

Creates, updates, deletes, gets or lists a <code>vw_build_service_builds</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_build_service_builds</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_build_service_builds" /></td></tr>
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
JSON_EXTRACT(properties, '$.relativePath') as "relative_path",
JSON_EXTRACT(properties, '$.builder') as "builder",
JSON_EXTRACT(properties, '$.agentPool') as "agent_pool",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.env') as "env",
JSON_EXTRACT(properties, '$.apms') as "apms",
JSON_EXTRACT(properties, '$.certificates') as "certificates",
JSON_EXTRACT(properties, '$.triggeredBuildResult') as "triggered_build_result",
JSON_EXTRACT(properties, '$.resourceRequests') as "resource_requests",
subscriptionId,
resourceGroupName,
serviceName,
buildServiceName,
buildName
FROM azure.spring_apps.build_service_builds
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND buildServiceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.relativePath') as "relative_path",
json_extract_path_text(properties, '$.builder') as "builder",
json_extract_path_text(properties, '$.agentPool') as "agent_pool",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.env') as "env",
json_extract_path_text(properties, '$.apms') as "apms",
json_extract_path_text(properties, '$.certificates') as "certificates",
json_extract_path_text(properties, '$.triggeredBuildResult') as "triggered_build_result",
json_extract_path_text(properties, '$.resourceRequests') as "resource_requests",
subscriptionId,
resourceGroupName,
serviceName,
buildServiceName,
buildName
FROM azure.spring_apps.build_service_builds
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND buildServiceName = 'replace-me';
```

</TabItem>
</Tabs>
