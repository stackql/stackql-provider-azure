--- 
title: vw_scripts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scripts
  - data_explorer
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

Creates, updates, deletes, gets or lists a <code>vw_scripts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scripts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_explorer.vw_scripts" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.scriptUrl') as "script_url",
JSON_EXTRACT(properties, '$.scriptUrlSasToken') as "script_url_sas_token",
JSON_EXTRACT(properties, '$.scriptContent') as "script_content",
JSON_EXTRACT(properties, '$.forceUpdateTag') as "force_update_tag",
JSON_EXTRACT(properties, '$.continueOnErrors') as "continue_on_errors",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
clusterName,
databaseName,
scriptName
FROM azure.data_explorer.scripts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.scriptUrl') as "script_url",
json_extract_path_text(properties, '$.scriptUrlSasToken') as "script_url_sas_token",
json_extract_path_text(properties, '$.scriptContent') as "script_content",
json_extract_path_text(properties, '$.forceUpdateTag') as "force_update_tag",
json_extract_path_text(properties, '$.continueOnErrors') as "continue_on_errors",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
clusterName,
databaseName,
scriptName
FROM azure.data_explorer.scripts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
