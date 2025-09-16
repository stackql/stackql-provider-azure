--- 
title: vw_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_accounts
  - maps
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

Creates, updates, deletes, gets or lists a <code>vw_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maps.vw_accounts" /></td></tr>
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
sku as sku,
kind as kind,
systemData as system_data,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.uniqueId') as "unique_id",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.linkedResources') as "linked_resources",
JSON_EXTRACT(properties, '$.cors') as "cors",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.locations') as "locations",
subscriptionId,
resourceGroupName,
accountName
FROM azure.maps.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
kind as kind,
systemData as system_data,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.uniqueId') as "unique_id",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.linkedResources') as "linked_resources",
json_extract_path_text(properties, '$.cors') as "cors",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.locations') as "locations",
subscriptionId,
resourceGroupName,
accountName
FROM azure.maps.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
