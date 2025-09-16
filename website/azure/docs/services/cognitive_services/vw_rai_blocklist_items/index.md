--- 
title: vw_rai_blocklist_items
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_rai_blocklist_items
  - cognitive_services
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

Creates, updates, deletes, gets or lists a <code>vw_rai_blocklist_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_rai_blocklist_items</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.vw_rai_blocklist_items" /></td></tr>
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
systemData as system_data,
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.pattern') as "pattern",
JSON_EXTRACT(properties, '$.isRegex') as "is_regex",
subscriptionId,
resourceGroupName,
accountName,
raiBlocklistName,
raiBlocklistItemName
FROM azure.cognitive_services.rai_blocklist_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND raiBlocklistName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.pattern') as "pattern",
json_extract_path_text(properties, '$.isRegex') as "is_regex",
subscriptionId,
resourceGroupName,
accountName,
raiBlocklistName,
raiBlocklistItemName
FROM azure.cognitive_services.rai_blocklist_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND raiBlocklistName = 'replace-me';
```

</TabItem>
</Tabs>
