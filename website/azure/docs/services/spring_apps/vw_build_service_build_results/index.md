--- 
title: vw_build_service_build_results
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_build_service_build_results
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

Creates, updates, deletes, gets or lists a <code>vw_build_service_build_results</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_build_service_build_results</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_build_service_build_results" /></td></tr>
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
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.buildPodName') as "build_pod_name",
JSON_EXTRACT(properties, '$.buildStages') as "build_stages",
JSON_EXTRACT(properties, '$.image') as "image",
subscriptionId,
resourceGroupName,
serviceName,
buildServiceName,
buildName,
buildResultName
FROM azure.spring_apps.build_service_build_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND buildServiceName = 'replace-me' AND buildName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.buildPodName') as "build_pod_name",
json_extract_path_text(properties, '$.buildStages') as "build_stages",
json_extract_path_text(properties, '$.image') as "image",
subscriptionId,
resourceGroupName,
serviceName,
buildServiceName,
buildName,
buildResultName
FROM azure.spring_apps.build_service_build_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND buildServiceName = 'replace-me' AND buildName = 'replace-me';
```

</TabItem>
</Tabs>
