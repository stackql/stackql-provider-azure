--- 
title: vw_jit_requests
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jit_requests
  - managed_applications
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

Creates, updates, deletes, gets or lists a <code>vw_jit_requests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jit_requests</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_applications.vw_jit_requests" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.applicationResourceId') as "application_resource_id",
JSON_EXTRACT(properties, '$.publisherTenantId') as "publisher_tenant_id",
JSON_EXTRACT(properties, '$.jitAuthorizationPolicies') as "jit_authorization_policies",
JSON_EXTRACT(properties, '$.jitSchedulingPolicy') as "jit_scheduling_policy",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.jitRequestState') as "jit_request_state",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.updatedBy') as "updated_by",
subscriptionId,
resourceGroupName,
jitRequestName
FROM azure.managed_applications.jit_requests
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.applicationResourceId') as "application_resource_id",
json_extract_path_text(properties, '$.publisherTenantId') as "publisher_tenant_id",
json_extract_path_text(properties, '$.jitAuthorizationPolicies') as "jit_authorization_policies",
json_extract_path_text(properties, '$.jitSchedulingPolicy') as "jit_scheduling_policy",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.jitRequestState') as "jit_request_state",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.updatedBy') as "updated_by",
subscriptionId,
resourceGroupName,
jitRequestName
FROM azure.managed_applications.jit_requests
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
