--- 
title: vw_delegation_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_delegation_settings
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_delegation_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_delegation_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_delegation_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.url') as "url",
JSON_EXTRACT(properties, '$.validationKey') as "validation_key",
JSON_EXTRACT(properties, '$.subscriptions') as "subscriptions",
JSON_EXTRACT(properties, '$.userRegistration') as "user_registration",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.api_management.delegation_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.url') as "url",
json_extract_path_text(properties, '$.validationKey') as "validation_key",
json_extract_path_text(properties, '$.subscriptions') as "subscriptions",
json_extract_path_text(properties, '$.userRegistration') as "user_registration",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.api_management.delegation_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
