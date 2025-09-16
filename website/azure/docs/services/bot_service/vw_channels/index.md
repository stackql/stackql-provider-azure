--- 
title: vw_channels
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_channels
  - bot_service
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

Creates, updates, deletes, gets or lists a <code>vw_channels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_channels</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.bot_service.vw_channels" /></td></tr>
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
sku as sku,
kind as kind,
etag as etag,
zones as zones,
JSON_EXTRACT(properties, '$.channelName') as "channel_name",
JSON_EXTRACT(properties, '$.etag') as "etag",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.location') as "location",
subscriptionId,
resourceGroupName,
resourceName,
channelName
FROM azure.bot_service.channels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
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
sku as sku,
kind as kind,
etag as etag,
zones as zones,
json_extract_path_text(properties, '$.channelName') as "channel_name",
json_extract_path_text(properties, '$.etag') as "etag",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.location') as "location",
subscriptionId,
resourceGroupName,
resourceName,
channelName
FROM azure.bot_service.channels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
