--- 
title: vw_virtual_appliance_sites
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_appliance_sites
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_appliance_sites</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_appliance_sites</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_appliance_sites" /></td></tr>
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
etag as etag,
type as type,
JSON_EXTRACT(properties, '$.addressPrefix') as "address_prefix",
JSON_EXTRACT(properties, '$.o365Policy') as "o365_policy",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkVirtualApplianceName,
siteName
FROM azure.network.virtual_appliance_sites
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkVirtualApplianceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.addressPrefix') as "address_prefix",
json_extract_path_text(properties, '$.o365Policy') as "o365_policy",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkVirtualApplianceName,
siteName
FROM azure.network.virtual_appliance_sites
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkVirtualApplianceName = 'replace-me';
```

</TabItem>
</Tabs>
