--- 
title: vw_extended_ue_information
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_extended_ue_information
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>vw_extended_ue_information</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_extended_ue_information</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.vw_extended_ue_information" /></td></tr>
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
JSON_EXTRACT(properties, '$.ratType') as "rat_type",
JSON_EXTRACT(properties, '$.lastReadAt') as "last_read_at",
subscriptionId,
resourceGroupName,
packetCoreControlPlaneName,
ueId
FROM azure.mobile_network.extended_ue_information
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND packetCoreControlPlaneName = 'replace-me' AND ueId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.ratType') as "rat_type",
json_extract_path_text(properties, '$.lastReadAt') as "last_read_at",
subscriptionId,
resourceGroupName,
packetCoreControlPlaneName,
ueId
FROM azure.mobile_network.extended_ue_information
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND packetCoreControlPlaneName = 'replace-me' AND ueId = 'replace-me';
```

</TabItem>
</Tabs>
