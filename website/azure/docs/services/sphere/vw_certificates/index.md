--- 
title: vw_certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_certificates
  - sphere
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sphere.vw_certificates" /></td></tr>
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
JSON_EXTRACT(properties, '$.certificate') as "certificate",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.subject') as "subject",
JSON_EXTRACT(properties, '$.thumbprint') as "thumbprint",
JSON_EXTRACT(properties, '$.expiryUtc') as "expiry_utc",
JSON_EXTRACT(properties, '$.notBeforeUtc') as "not_before_utc",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
catalogName,
serialNumber
FROM azure.sphere.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.certificate') as "certificate",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.subject') as "subject",
json_extract_path_text(properties, '$.thumbprint') as "thumbprint",
json_extract_path_text(properties, '$.expiryUtc') as "expiry_utc",
json_extract_path_text(properties, '$.notBeforeUtc') as "not_before_utc",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
catalogName,
serialNumber
FROM azure.sphere.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
</Tabs>
