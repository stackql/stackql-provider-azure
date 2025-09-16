--- 
title: vw_build_service_builders
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_build_service_builders
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

Creates, updates, deletes, gets or lists a <code>vw_build_service_builders</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_build_service_builders</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_build_service_builders" /></td></tr>
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
JSON_EXTRACT(properties, '$.stack') as "stack",
JSON_EXTRACT(properties, '$.buildpackGroups') as "buildpack_groups",
subscriptionId,
resourceGroupName,
serviceName,
buildServiceName,
builderName
FROM azure.spring_apps.build_service_builders
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND buildServiceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.stack') as "stack",
json_extract_path_text(properties, '$.buildpackGroups') as "buildpack_groups",
subscriptionId,
resourceGroupName,
serviceName,
buildServiceName,
builderName
FROM azure.spring_apps.build_service_builders
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND buildServiceName = 'replace-me';
```

</TabItem>
</Tabs>
