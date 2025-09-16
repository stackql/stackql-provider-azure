--- 
title: vw_requests
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_requests
  - customer_lockbox
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

Creates, updates, deletes, gets or lists a <code>vw_requests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_requests</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.customer_lockbox.vw_requests" /></td></tr>
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
JSON_EXTRACT(properties, '$.requestId') as "request_id",
JSON_EXTRACT(properties, '$.justification') as "justification",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.createdDateTime') as "created_date_time",
JSON_EXTRACT(properties, '$.expirationDateTime') as "expiration_date_time",
JSON_EXTRACT(properties, '$.duration') as "duration",
JSON_EXTRACT(properties, '$.resourceIds') as "resource_ids",
JSON_EXTRACT(properties, '$.resourceType') as "resource_type",
JSON_EXTRACT(properties, '$.supportRequest') as "support_request",
JSON_EXTRACT(properties, '$.supportCaseUrl') as "support_case_url",
JSON_EXTRACT(properties, '$.workitemsource') as "workitemsource",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.accessLevel') as "access_level",
subscriptionId,
requestId
FROM azure.customer_lockbox.requests
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.requestId') as "request_id",
json_extract_path_text(properties, '$.justification') as "justification",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.createdDateTime') as "created_date_time",
json_extract_path_text(properties, '$.expirationDateTime') as "expiration_date_time",
json_extract_path_text(properties, '$.duration') as "duration",
json_extract_path_text(properties, '$.resourceIds') as "resource_ids",
json_extract_path_text(properties, '$.resourceType') as "resource_type",
json_extract_path_text(properties, '$.supportRequest') as "support_request",
json_extract_path_text(properties, '$.supportCaseUrl') as "support_case_url",
json_extract_path_text(properties, '$.workitemsource') as "workitemsource",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.accessLevel') as "access_level",
subscriptionId,
requestId
FROM azure.customer_lockbox.requests
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
