--- 
title: vw_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_policies
  - dev_test_labs
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

Creates, updates, deletes, gets or lists a <code>vw_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_policies" /></td></tr>
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
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.factName') as "fact_name",
JSON_EXTRACT(properties, '$.factData') as "fact_data",
JSON_EXTRACT(properties, '$.threshold') as "threshold",
JSON_EXTRACT(properties, '$.evaluatorType') as "evaluator_type",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
policySetName,
name
FROM azure.dev_test_labs.policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND policySetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.factName') as "fact_name",
json_extract_path_text(properties, '$.factData') as "fact_data",
json_extract_path_text(properties, '$.threshold') as "threshold",
json_extract_path_text(properties, '$.evaluatorType') as "evaluator_type",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
policySetName,
name
FROM azure.dev_test_labs.policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND policySetName = 'replace-me';
```

</TabItem>
</Tabs>
