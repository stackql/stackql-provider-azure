--- 
title: vw_application_packages
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_application_packages
  - batch
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

Creates, updates, deletes, gets or lists a <code>vw_application_packages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_application_packages</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.batch.vw_application_packages" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.format') as "format",
JSON_EXTRACT(properties, '$.storageUrl') as "storage_url",
JSON_EXTRACT(properties, '$.storageUrlExpiry') as "storage_url_expiry",
JSON_EXTRACT(properties, '$.lastActivationTime') as "last_activation_time",
subscriptionId,
resourceGroupName,
accountName,
applicationName,
versionName
FROM azure.batch.application_packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND applicationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.format') as "format",
json_extract_path_text(properties, '$.storageUrl') as "storage_url",
json_extract_path_text(properties, '$.storageUrlExpiry') as "storage_url_expiry",
json_extract_path_text(properties, '$.lastActivationTime') as "last_activation_time",
subscriptionId,
resourceGroupName,
accountName,
applicationName,
versionName
FROM azure.batch.application_packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND applicationName = 'replace-me';
```

</TabItem>
</Tabs>
