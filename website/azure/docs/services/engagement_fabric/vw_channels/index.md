--- 
title: vw_channels
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_channels
  - engagement_fabric
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.engagement_fabric.vw_channels" /></td></tr>
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
JSON_EXTRACT(properties, '$.channelType') as "channel_type",
JSON_EXTRACT(properties, '$.channelFunctions') as "channel_functions",
JSON_EXTRACT(properties, '$.credentials') as "credentials",
subscriptionId,
resourceGroupName,
accountName,
channelName
FROM azure.engagement_fabric.channels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.channelType') as "channel_type",
json_extract_path_text(properties, '$.channelFunctions') as "channel_functions",
json_extract_path_text(properties, '$.credentials') as "credentials",
subscriptionId,
resourceGroupName,
accountName,
channelName
FROM azure.engagement_fabric.channels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
