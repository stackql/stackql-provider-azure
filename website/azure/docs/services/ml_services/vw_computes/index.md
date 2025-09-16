--- 
title: vw_computes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_computes
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_computes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_computes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_computes" /></td></tr>
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
systemData as system_data,
identity as identity,
tags as tags,
sku as sku,
JSON_EXTRACT(properties, '$.computeType') as "compute_type",
JSON_EXTRACT(properties, '$.computeLocation') as "compute_location",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.createdOn') as "created_on",
JSON_EXTRACT(properties, '$.modifiedOn') as "modified_on",
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
JSON_EXTRACT(properties, '$.provisioningErrors') as "provisioning_errors",
JSON_EXTRACT(properties, '$.isAttachedCompute') as "is_attached_compute",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
subscriptionId,
resourceGroupName,
workspaceName,
computeName
FROM azure.ml_services.computes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
identity as identity,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.computeType') as "compute_type",
json_extract_path_text(properties, '$.computeLocation') as "compute_location",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.createdOn') as "created_on",
json_extract_path_text(properties, '$.modifiedOn') as "modified_on",
json_extract_path_text(properties, '$.resourceId') as "resource_id",
json_extract_path_text(properties, '$.provisioningErrors') as "provisioning_errors",
json_extract_path_text(properties, '$.isAttachedCompute') as "is_attached_compute",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
subscriptionId,
resourceGroupName,
workspaceName,
computeName
FROM azure.ml_services.computes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
