--- 
title: vw_vcenters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vcenters
  - connected_vsphere
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_vcenters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vcenters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.connected_vsphere.vw_vcenters" /></td></tr>
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
extendedLocation as extended_location,
systemData as system_data,
tags as tags,
type as type,
kind as kind,
JSON_EXTRACT(properties, '$.uuid') as "uuid",
JSON_EXTRACT(properties, '$.fqdn') as "fqdn",
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.instanceUuid') as "instance_uuid",
JSON_EXTRACT(properties, '$.connectionStatus') as "connection_status",
JSON_EXTRACT(properties, '$.customResourceName') as "custom_resource_name",
JSON_EXTRACT(properties, '$.credentials') as "credentials",
JSON_EXTRACT(properties, '$.statuses') as "statuses",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
vcenterName
FROM azure_isv.connected_vsphere.vcenters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
extendedLocation as extended_location,
systemData as system_data,
tags as tags,
type as type,
kind as kind,
json_extract_path_text(properties, '$.uuid') as "uuid",
json_extract_path_text(properties, '$.fqdn') as "fqdn",
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.instanceUuid') as "instance_uuid",
json_extract_path_text(properties, '$.connectionStatus') as "connection_status",
json_extract_path_text(properties, '$.customResourceName') as "custom_resource_name",
json_extract_path_text(properties, '$.credentials') as "credentials",
json_extract_path_text(properties, '$.statuses') as "statuses",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
vcenterName
FROM azure_isv.connected_vsphere.vcenters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
