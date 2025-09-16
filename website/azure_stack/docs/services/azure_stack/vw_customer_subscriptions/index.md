--- 
title: vw_customer_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_customer_subscriptions
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

Creates, updates, deletes, gets or lists a <code>vw_customer_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_customer_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack.vw_customer_subscriptions" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
subscriptionId,
resourceGroup,
registrationName,
customerSubscriptionName
FROM azure_stack.azure_stack.customer_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroup = 'replace-me' AND registrationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
etag as etag,
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
subscriptionId,
resourceGroup,
registrationName,
customerSubscriptionName
FROM azure_stack.azure_stack.customer_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroup = 'replace-me' AND registrationName = 'replace-me';
```

</TabItem>
</Tabs>
