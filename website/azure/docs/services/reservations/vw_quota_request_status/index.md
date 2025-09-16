--- 
title: vw_quota_request_status
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_quota_request_status
  - reservations
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

Creates, updates, deletes, gets or lists a <code>vw_quota_request_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_quota_request_status</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.reservations.vw_quota_request_status" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.message') as "message",
JSON_EXTRACT(properties, '$.requestSubmitTime') as "request_submit_time",
JSON_EXTRACT(properties, '$.value') as "value",
subscriptionId,
providerId,
location,
id
FROM azure.reservations.quota_request_status
WHERE subscriptionId = 'replace-me' AND providerId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.message') as "message",
json_extract_path_text(properties, '$.requestSubmitTime') as "request_submit_time",
json_extract_path_text(properties, '$.value') as "value",
subscriptionId,
providerId,
location,
id
FROM azure.reservations.quota_request_status
WHERE subscriptionId = 'replace-me' AND providerId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
