--- 
title: vw_build_service_build_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_build_service_build_services
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

Creates, updates, deletes, gets or lists a <code>vw_build_service_build_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_build_service_build_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_build_service_build_services" /></td></tr>
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
JSON_EXTRACT(properties, '$.containerRegistry') as "container_registry",
JSON_EXTRACT(properties, '$.kPackVersion') as "k_pack_version",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceRequests') as "resource_requests",
subscriptionId,
resourceGroupName,
serviceName,
buildServiceName
FROM azure.spring_apps.build_service_build_services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.containerRegistry') as "container_registry",
json_extract_path_text(properties, '$.kPackVersion') as "k_pack_version",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceRequests') as "resource_requests",
subscriptionId,
resourceGroupName,
serviceName,
buildServiceName
FROM azure.spring_apps.build_service_build_services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
