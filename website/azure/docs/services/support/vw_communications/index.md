--- 
title: vw_communications
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_communications
  - support
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

Creates, updates, deletes, gets or lists a <code>vw_communications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_communications</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.support.vw_communications" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.communicationType') as "communication_type",
JSON_EXTRACT(properties, '$.communicationDirection') as "communication_direction",
JSON_EXTRACT(properties, '$.sender') as "sender",
JSON_EXTRACT(properties, '$.subject') as "subject",
JSON_EXTRACT(properties, '$.body') as "body",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
subscriptionId,
supportTicketName,
communicationName
FROM azure.support.communications
WHERE subscriptionId = 'replace-me' AND supportTicketName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.communicationType') as "communication_type",
json_extract_path_text(properties, '$.communicationDirection') as "communication_direction",
json_extract_path_text(properties, '$.sender') as "sender",
json_extract_path_text(properties, '$.subject') as "subject",
json_extract_path_text(properties, '$.body') as "body",
json_extract_path_text(properties, '$.createdDate') as "created_date",
subscriptionId,
supportTicketName,
communicationName
FROM azure.support.communications
WHERE subscriptionId = 'replace-me' AND supportTicketName = 'replace-me';
```

</TabItem>
</Tabs>
