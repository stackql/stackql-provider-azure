--- 
title: vw_azure_ad_administrators
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_azure_ad_administrators
  - mysql
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

Creates, updates, deletes, gets or lists a <code>vw_azure_ad_administrators</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_azure_ad_administrators</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mysql.vw_azure_ad_administrators" /></td></tr>
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
JSON_EXTRACT(properties, '$.administratorType') as "administrator_type",
JSON_EXTRACT(properties, '$.login') as "login",
JSON_EXTRACT(properties, '$.sid') as "sid",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.identityResourceId') as "identity_resource_id",
subscriptionId,
resourceGroupName,
serverName,
administratorName
FROM azure.mysql.azure_ad_administrators
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.administratorType') as "administrator_type",
json_extract_path_text(properties, '$.login') as "login",
json_extract_path_text(properties, '$.sid') as "sid",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.identityResourceId') as "identity_resource_id",
subscriptionId,
resourceGroupName,
serverName,
administratorName
FROM azure.mysql.azure_ad_administrators
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
