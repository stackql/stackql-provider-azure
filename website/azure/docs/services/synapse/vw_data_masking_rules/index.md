--- 
title: vw_data_masking_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_masking_rules
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_data_masking_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_masking_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_data_masking_rules" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.id') as "id",
JSON_EXTRACT(properties, '$.aliasName') as "alias_name",
JSON_EXTRACT(properties, '$.ruleState') as "rule_state",
JSON_EXTRACT(properties, '$.schemaName') as "schema_name",
JSON_EXTRACT(properties, '$.tableName') as "table_name",
JSON_EXTRACT(properties, '$.columnName') as "column_name",
JSON_EXTRACT(properties, '$.maskingFunction') as "masking_function",
JSON_EXTRACT(properties, '$.numberFrom') as "number_from",
JSON_EXTRACT(properties, '$.numberTo') as "number_to",
JSON_EXTRACT(properties, '$.prefixSize') as "prefix_size",
JSON_EXTRACT(properties, '$.suffixSize') as "suffix_size",
JSON_EXTRACT(properties, '$.replacementString') as "replacement_string",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
dataMaskingPolicyName,
dataMaskingRuleName
FROM azure.synapse.data_masking_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND dataMaskingPolicyName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
kind as kind,
json_extract_path_text(properties, '$.id') as "id",
json_extract_path_text(properties, '$.aliasName') as "alias_name",
json_extract_path_text(properties, '$.ruleState') as "rule_state",
json_extract_path_text(properties, '$.schemaName') as "schema_name",
json_extract_path_text(properties, '$.tableName') as "table_name",
json_extract_path_text(properties, '$.columnName') as "column_name",
json_extract_path_text(properties, '$.maskingFunction') as "masking_function",
json_extract_path_text(properties, '$.numberFrom') as "number_from",
json_extract_path_text(properties, '$.numberTo') as "number_to",
json_extract_path_text(properties, '$.prefixSize') as "prefix_size",
json_extract_path_text(properties, '$.suffixSize') as "suffix_size",
json_extract_path_text(properties, '$.replacementString') as "replacement_string",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
dataMaskingPolicyName,
dataMaskingRuleName
FROM azure.synapse.data_masking_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND dataMaskingPolicyName = 'replace-me';
```

</TabItem>
</Tabs>
