--- 
title: vw_security_user_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_security_user_rules
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

Creates, updates, deletes, gets or lists a <code>vw_security_user_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_security_user_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_security_user_rules" /></td></tr>
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
systemData as system_data,
type as type,
etag as etag,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.protocol') as "protocol",
JSON_EXTRACT(properties, '$.sources') as "sources",
JSON_EXTRACT(properties, '$.destinations') as "destinations",
JSON_EXTRACT(properties, '$.sourcePortRanges') as "source_port_ranges",
JSON_EXTRACT(properties, '$.destinationPortRanges') as "destination_port_ranges",
JSON_EXTRACT(properties, '$.direction') as "direction",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
subscriptionId,
resourceGroupName,
networkManagerName,
configurationName,
ruleCollectionName,
ruleName
FROM azure.network.security_user_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkManagerName = 'replace-me' AND configurationName = 'replace-me' AND ruleCollectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
etag as etag,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.protocol') as "protocol",
json_extract_path_text(properties, '$.sources') as "sources",
json_extract_path_text(properties, '$.destinations') as "destinations",
json_extract_path_text(properties, '$.sourcePortRanges') as "source_port_ranges",
json_extract_path_text(properties, '$.destinationPortRanges') as "destination_port_ranges",
json_extract_path_text(properties, '$.direction') as "direction",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
subscriptionId,
resourceGroupName,
networkManagerName,
configurationName,
ruleCollectionName,
ruleName
FROM azure.network.security_user_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkManagerName = 'replace-me' AND configurationName = 'replace-me' AND ruleCollectionName = 'replace-me';
```

</TabItem>
</Tabs>
