--- 
title: vw_dns_private_views
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dns_private_views
  - oracle
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_dns_private_views</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dns_private_views</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_dns_private_views" /></td></tr>
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
JSON_EXTRACT(properties, '$.ocid') as "ocid",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.isProtected') as "is_protected",
JSON_EXTRACT(properties, '$.lifecycleState') as "lifecycle_state",
JSON_EXTRACT(properties, '$.self') as "self",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.timeUpdated') as "time_updated",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
location,
dnsprivateviewocid
FROM azure_isv.oracle.dns_private_views
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.ocid') as "ocid",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.isProtected') as "is_protected",
json_extract_path_text(properties, '$.lifecycleState') as "lifecycle_state",
json_extract_path_text(properties, '$.self') as "self",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.timeUpdated') as "time_updated",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
location,
dnsprivateviewocid
FROM azure_isv.oracle.dns_private_views
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
