--- 
title: vw_registrations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_registrations
  - azure_stack
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_registrations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_registrations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack.vw_registrations" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.cloudId') as "cloud_id",
JSON_EXTRACT(properties, '$.billingModel') as "billing_model",
subscriptionId,
resourceGroup,
registrationName
FROM azure_stack.azure_stack.registrations
WHERE subscriptionId = 'replace-me';
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
etag as etag,
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.cloudId') as "cloud_id",
json_extract_path_text(properties, '$.billingModel') as "billing_model",
subscriptionId,
resourceGroup,
registrationName
FROM azure_stack.azure_stack.registrations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
