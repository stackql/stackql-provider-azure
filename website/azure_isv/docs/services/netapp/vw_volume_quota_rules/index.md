--- 
title: vw_volume_quota_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_volume_quota_rules
  - netapp
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

Creates, updates, deletes, gets or lists a <code>vw_volume_quota_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_volume_quota_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.vw_volume_quota_rules" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.quotaSizeInKiBs') as "quota_size_in_ki_bs",
JSON_EXTRACT(properties, '$.quotaType') as "quota_type",
JSON_EXTRACT(properties, '$.quotaTarget') as "quota_target",
subscriptionId,
resourceGroupName,
accountName,
poolName,
volumeName,
volumeQuotaRuleName
FROM azure_isv.netapp.volume_quota_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND poolName = 'replace-me' AND volumeName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.quotaSizeInKiBs') as "quota_size_in_ki_bs",
json_extract_path_text(properties, '$.quotaType') as "quota_type",
json_extract_path_text(properties, '$.quotaTarget') as "quota_target",
subscriptionId,
resourceGroupName,
accountName,
poolName,
volumeName,
volumeQuotaRuleName
FROM azure_isv.netapp.volume_quota_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND poolName = 'replace-me' AND volumeName = 'replace-me';
```

</TabItem>
</Tabs>
