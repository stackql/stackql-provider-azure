--- 
title: vw_applications
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_applications
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

Creates, updates, deletes, gets or lists a <code>vw_applications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_applications</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_applications.vw_applications" /></td></tr>
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
plan as plan,
kind as kind,
identity as identity,
managedBy as managed_by,
sku as sku,
JSON_EXTRACT(properties, '$.managedResourceGroupId') as "managed_resource_group_id",
JSON_EXTRACT(properties, '$.applicationDefinitionId') as "application_definition_id",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.outputs') as "outputs",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.billingDetails') as "billing_details",
JSON_EXTRACT(properties, '$.jitAccessPolicy') as "jit_access_policy",
JSON_EXTRACT(properties, '$.publisherTenantId') as "publisher_tenant_id",
JSON_EXTRACT(properties, '$.authorizations') as "authorizations",
JSON_EXTRACT(properties, '$.managementMode') as "management_mode",
JSON_EXTRACT(properties, '$.customerSupport') as "customer_support",
JSON_EXTRACT(properties, '$.supportUrls') as "support_urls",
JSON_EXTRACT(properties, '$.artifacts') as "artifacts",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.updatedBy') as "updated_by",
subscriptionId,
resourceGroupName,
applicationName,
applicationId
FROM azure.managed_applications.applications
WHERE applicationId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
plan as plan,
kind as kind,
identity as identity,
managedBy as managed_by,
sku as sku,
json_extract_path_text(properties, '$.managedResourceGroupId') as "managed_resource_group_id",
json_extract_path_text(properties, '$.applicationDefinitionId') as "application_definition_id",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.outputs') as "outputs",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.billingDetails') as "billing_details",
json_extract_path_text(properties, '$.jitAccessPolicy') as "jit_access_policy",
json_extract_path_text(properties, '$.publisherTenantId') as "publisher_tenant_id",
json_extract_path_text(properties, '$.authorizations') as "authorizations",
json_extract_path_text(properties, '$.managementMode') as "management_mode",
json_extract_path_text(properties, '$.customerSupport') as "customer_support",
json_extract_path_text(properties, '$.supportUrls') as "support_urls",
json_extract_path_text(properties, '$.artifacts') as "artifacts",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.updatedBy') as "updated_by",
subscriptionId,
resourceGroupName,
applicationName,
applicationId
FROM azure.managed_applications.applications
WHERE applicationId = 'replace-me';
```

</TabItem>
</Tabs>
