--- 
title: vw_sub_account_tag_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sub_account_tag_rules
  - logz
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

Creates, updates, deletes, gets or lists a <code>vw_sub_account_tag_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sub_account_tag_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.logz.vw_sub_account_tag_rules" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.logRules') as "log_rules",
JSON_EXTRACT(properties, '$.systemData') as "system_data",
subscriptionId,
resourceGroupName,
monitorName,
subAccountName,
ruleSetName
FROM azure_isv.logz.sub_account_tag_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me' AND subAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.logRules') as "log_rules",
json_extract_path_text(properties, '$.systemData') as "system_data",
subscriptionId,
resourceGroupName,
monitorName,
subAccountName,
ruleSetName
FROM azure_isv.logz.sub_account_tag_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me' AND subAccountName = 'replace-me';
```

</TabItem>
</Tabs>
