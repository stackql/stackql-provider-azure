--- 
title: vw_storage_account_credentials
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_storage_account_credentials
  - storsimple_8000_series
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

Creates, updates, deletes, gets or lists a <code>vw_storage_account_credentials</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_storage_account_credentials</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.vw_storage_account_credentials" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.endPoint') as "end_point",
JSON_EXTRACT(properties, '$.sslStatus') as "ssl_status",
JSON_EXTRACT(properties, '$.accessKey') as "access_key",
JSON_EXTRACT(properties, '$.volumesCount') as "volumes_count",
subscriptionId,
resourceGroupName,
managerName,
storageAccountCredentialName
FROM azure_extras.storsimple_8000_series.storage_account_credentials
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
kind as kind,
json_extract_path_text(properties, '$.endPoint') as "end_point",
json_extract_path_text(properties, '$.sslStatus') as "ssl_status",
json_extract_path_text(properties, '$.accessKey') as "access_key",
json_extract_path_text(properties, '$.volumesCount') as "volumes_count",
subscriptionId,
resourceGroupName,
managerName,
storageAccountCredentialName
FROM azure_extras.storsimple_8000_series.storage_account_credentials
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
</Tabs>
