--- 
title: vw_registration_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_registration_definitions
  - managed_services
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

Creates, updates, deletes, gets or lists a <code>vw_registration_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_registration_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_services.vw_registration_definitions" /></td></tr>
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
plan as plan,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.authorizations') as "authorizations",
JSON_EXTRACT(properties, '$.eligibleAuthorizations') as "eligible_authorizations",
JSON_EXTRACT(properties, '$.registrationDefinitionName') as "registration_definition_name",
JSON_EXTRACT(properties, '$.managedByTenantId') as "managed_by_tenant_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.manageeTenantId') as "managee_tenant_id",
JSON_EXTRACT(properties, '$.manageeTenantName') as "managee_tenant_name",
JSON_EXTRACT(properties, '$.managedByTenantName') as "managed_by_tenant_name",
scope,
registrationDefinitionId
FROM azure.managed_services.registration_definitions
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
plan as plan,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.authorizations') as "authorizations",
json_extract_path_text(properties, '$.eligibleAuthorizations') as "eligible_authorizations",
json_extract_path_text(properties, '$.registrationDefinitionName') as "registration_definition_name",
json_extract_path_text(properties, '$.managedByTenantId') as "managed_by_tenant_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.manageeTenantId') as "managee_tenant_id",
json_extract_path_text(properties, '$.manageeTenantName') as "managee_tenant_name",
json_extract_path_text(properties, '$.managedByTenantName') as "managed_by_tenant_name",
scope,
registrationDefinitionId
FROM azure.managed_services.registration_definitions
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
