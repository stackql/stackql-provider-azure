--- 
title: vw_enterprise_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_enterprise_policies
  - power_platform
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_enterprise_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_enterprise_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.power_platform.vw_enterprise_policies" /></td></tr>
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
tags as tags,
identity as identity,
kind as kind,
systemData as system_data,
JSON_EXTRACT(properties, '$.systemId') as "system_id",
JSON_EXTRACT(properties, '$.lockbox') as "lockbox",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.networkInjection') as "network_injection",
JSON_EXTRACT(properties, '$.healthStatus') as "health_status",
subscriptionId,
resourceGroupName,
enterprisePolicyName
FROM azure_extras.power_platform.enterprise_policies
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
kind as kind,
systemData as system_data,
json_extract_path_text(properties, '$.systemId') as "system_id",
json_extract_path_text(properties, '$.lockbox') as "lockbox",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.networkInjection') as "network_injection",
json_extract_path_text(properties, '$.healthStatus') as "health_status",
subscriptionId,
resourceGroupName,
enterprisePolicyName
FROM azure_extras.power_platform.enterprise_policies
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
