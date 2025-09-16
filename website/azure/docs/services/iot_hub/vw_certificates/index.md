--- 
title: vw_certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_certificates
  - iot_hub
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

Creates, updates, deletes, gets or lists a <code>vw_certificates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_certificates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub.vw_certificates" /></td></tr>
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
etag as etag,
type as type,
JSON_EXTRACT(properties, '$.subject') as "subject",
JSON_EXTRACT(properties, '$.expiry') as "expiry",
JSON_EXTRACT(properties, '$.thumbprint') as "thumbprint",
JSON_EXTRACT(properties, '$.isVerified') as "is_verified",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.updated') as "updated",
JSON_EXTRACT(properties, '$.certificate') as "certificate",
subscriptionId,
resourceGroupName,
resourceName,
certificateName
FROM azure.iot_hub.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.subject') as "subject",
json_extract_path_text(properties, '$.expiry') as "expiry",
json_extract_path_text(properties, '$.thumbprint') as "thumbprint",
json_extract_path_text(properties, '$.isVerified') as "is_verified",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.updated') as "updated",
json_extract_path_text(properties, '$.certificate') as "certificate",
subscriptionId,
resourceGroupName,
resourceName,
certificateName
FROM azure.iot_hub.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
