--- 
title: vw_service_fabrics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_service_fabrics
  - dev_test_labs
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

Creates, updates, deletes, gets or lists a <code>vw_service_fabrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_service_fabrics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_service_fabrics" /></td></tr>
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
id as id,
name as name,
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.externalServiceFabricId') as "external_service_fabric_id",
JSON_EXTRACT(properties, '$.environmentId') as "environment_id",
JSON_EXTRACT(properties, '$.applicableSchedule') as "applicable_schedule",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
userName,
name
FROM azure.dev_test_labs.service_fabrics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND userName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.externalServiceFabricId') as "external_service_fabric_id",
json_extract_path_text(properties, '$.environmentId') as "environment_id",
json_extract_path_text(properties, '$.applicableSchedule') as "applicable_schedule",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
userName,
name
FROM azure.dev_test_labs.service_fabrics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND userName = 'replace-me';
```

</TabItem>
</Tabs>
