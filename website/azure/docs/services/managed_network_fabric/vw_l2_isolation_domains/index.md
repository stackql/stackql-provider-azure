--- 
title: vw_l2_isolation_domains
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_l2_isolation_domains
  - managed_network_fabric
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

Creates, updates, deletes, gets or lists a <code>vw_l2_isolation_domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_l2_isolation_domains</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_l2_isolation_domains" /></td></tr>
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
JSON_EXTRACT(properties, '$.annotation') as "annotation",
JSON_EXTRACT(properties, '$.networkFabricId') as "network_fabric_id",
JSON_EXTRACT(properties, '$.vlanId') as "vlan_id",
JSON_EXTRACT(properties, '$.mtu') as "mtu",
JSON_EXTRACT(properties, '$.configurationState') as "configuration_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
l2IsolationDomainName
FROM azure.managed_network_fabric.l2_isolation_domains
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.annotation') as "annotation",
json_extract_path_text(properties, '$.networkFabricId') as "network_fabric_id",
json_extract_path_text(properties, '$.vlanId') as "vlan_id",
json_extract_path_text(properties, '$.mtu') as "mtu",
json_extract_path_text(properties, '$.configurationState') as "configuration_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
l2IsolationDomainName
FROM azure.managed_network_fabric.l2_isolation_domains
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
