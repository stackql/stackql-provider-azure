--- 
title: vw_ip_extended_communities
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_ip_extended_communities
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

Creates, updates, deletes, gets or lists a <code>vw_ip_extended_communities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_ip_extended_communities</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_ip_extended_communities" /></td></tr>
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
JSON_EXTRACT(properties, '$.ipExtendedCommunityRules') as "ip_extended_community_rules",
JSON_EXTRACT(properties, '$.configurationState') as "configuration_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
ipExtendedCommunityName
FROM azure.managed_network_fabric.ip_extended_communities
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.annotation') as "annotation",
json_extract_path_text(properties, '$.ipExtendedCommunityRules') as "ip_extended_community_rules",
json_extract_path_text(properties, '$.configurationState') as "configuration_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
ipExtendedCommunityName
FROM azure.managed_network_fabric.ip_extended_communities
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
