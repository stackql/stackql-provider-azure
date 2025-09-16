--- 
title: vw_deployment_operations_at_management_group_scopes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_deployment_operations_at_management_group_scopes
  - resources
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

Creates, updates, deletes, gets or lists a <code>vw_deployment_operations_at_management_group_scopes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_deployment_operations_at_management_group_scopes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resources.vw_deployment_operations_at_management_group_scopes" /></td></tr>
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
operationId as operation_id,
JSON_EXTRACT(properties, '$.provisioningOperation') as "provisioning_operation",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.timestamp') as "timestamp",
JSON_EXTRACT(properties, '$.duration') as "duration",
JSON_EXTRACT(properties, '$.serviceRequestId') as "service_request_id",
JSON_EXTRACT(properties, '$.statusCode') as "status_code",
JSON_EXTRACT(properties, '$.statusMessage') as "status_message",
JSON_EXTRACT(properties, '$.targetResource') as "target_resource",
JSON_EXTRACT(properties, '$.request') as "request",
JSON_EXTRACT(properties, '$.response') as "response",
groupId,
deploymentName,
operationId
FROM azure.resources.deployment_operations_at_management_group_scopes
WHERE groupId = 'replace-me' AND deploymentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
operationId as operation_id,
json_extract_path_text(properties, '$.provisioningOperation') as "provisioning_operation",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.timestamp') as "timestamp",
json_extract_path_text(properties, '$.duration') as "duration",
json_extract_path_text(properties, '$.serviceRequestId') as "service_request_id",
json_extract_path_text(properties, '$.statusCode') as "status_code",
json_extract_path_text(properties, '$.statusMessage') as "status_message",
json_extract_path_text(properties, '$.targetResource') as "target_resource",
json_extract_path_text(properties, '$.request') as "request",
json_extract_path_text(properties, '$.response') as "response",
groupId,
deploymentName,
operationId
FROM azure.resources.deployment_operations_at_management_group_scopes
WHERE groupId = 'replace-me' AND deploymentName = 'replace-me';
```

</TabItem>
</Tabs>
