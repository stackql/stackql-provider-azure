--- 
title: vw_virtual_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_networks
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_networks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_virtual_networks" /></td></tr>
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
JSON_EXTRACT(properties, '$.allowedSubnets') as "allowed_subnets",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.externalProviderResourceId') as "external_provider_resource_id",
JSON_EXTRACT(properties, '$.externalSubnets') as "external_subnets",
JSON_EXTRACT(properties, '$.subnetOverrides') as "subnet_overrides",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.virtual_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
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
json_extract_path_text(properties, '$.allowedSubnets') as "allowed_subnets",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.externalProviderResourceId') as "external_provider_resource_id",
json_extract_path_text(properties, '$.externalSubnets') as "external_subnets",
json_extract_path_text(properties, '$.subnetOverrides') as "subnet_overrides",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.virtual_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
</Tabs>
