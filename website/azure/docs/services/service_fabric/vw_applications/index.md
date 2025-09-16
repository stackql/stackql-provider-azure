--- 
title: vw_applications
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_applications
  - service_fabric
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric.vw_applications" /></td></tr>
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
identity as identity,
type as type,
tags as tags,
etag as etag,
systemData as system_data,
JSON_EXTRACT(properties, '$.typeVersion') as "type_version",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.upgradePolicy') as "upgrade_policy",
JSON_EXTRACT(properties, '$.minimumNodes') as "minimum_nodes",
JSON_EXTRACT(properties, '$.maximumNodes') as "maximum_nodes",
JSON_EXTRACT(properties, '$.removeApplicationCapacity') as "remove_application_capacity",
JSON_EXTRACT(properties, '$.metrics') as "metrics",
JSON_EXTRACT(properties, '$.managedIdentities') as "managed_identities",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.typeName') as "type_name",
subscriptionId,
resourceGroupName,
clusterName,
applicationName
FROM azure.service_fabric.applications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
identity as identity,
type as type,
tags as tags,
etag as etag,
systemData as system_data,
json_extract_path_text(properties, '$.typeVersion') as "type_version",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.upgradePolicy') as "upgrade_policy",
json_extract_path_text(properties, '$.minimumNodes') as "minimum_nodes",
json_extract_path_text(properties, '$.maximumNodes') as "maximum_nodes",
json_extract_path_text(properties, '$.removeApplicationCapacity') as "remove_application_capacity",
json_extract_path_text(properties, '$.metrics') as "metrics",
json_extract_path_text(properties, '$.managedIdentities') as "managed_identities",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.typeName') as "type_name",
subscriptionId,
resourceGroupName,
clusterName,
applicationName
FROM azure.service_fabric.applications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
