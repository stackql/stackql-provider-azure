--- 
title: vw_network_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_connections
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_network_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_network_connections" /></td></tr>
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
location as location,
tags as tags,
JSON_EXTRACT(properties, '$.subnetId') as "subnet_id",
JSON_EXTRACT(properties, '$.domainName') as "domain_name",
JSON_EXTRACT(properties, '$.organizationUnit') as "organization_unit",
JSON_EXTRACT(properties, '$.domainUsername') as "domain_username",
JSON_EXTRACT(properties, '$.domainPassword') as "domain_password",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.healthCheckStatus') as "health_check_status",
JSON_EXTRACT(properties, '$.networkingResourceGroupName') as "networking_resource_group_name",
JSON_EXTRACT(properties, '$.domainJoinType') as "domain_join_type",
subscriptionId,
resourceGroupName,
networkConnectionName
FROM azure.dev_center.network_connections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.subnetId') as "subnet_id",
json_extract_path_text(properties, '$.domainName') as "domain_name",
json_extract_path_text(properties, '$.organizationUnit') as "organization_unit",
json_extract_path_text(properties, '$.domainUsername') as "domain_username",
json_extract_path_text(properties, '$.domainPassword') as "domain_password",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.healthCheckStatus') as "health_check_status",
json_extract_path_text(properties, '$.networkingResourceGroupName') as "networking_resource_group_name",
json_extract_path_text(properties, '$.domainJoinType') as "domain_join_type",
subscriptionId,
resourceGroupName,
networkConnectionName
FROM azure.dev_center.network_connections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
