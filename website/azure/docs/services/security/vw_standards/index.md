--- 
title: vw_standards
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_standards
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_standards</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_standards</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_standards" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.standardType') as "standard_type",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.assessments') as "assessments",
JSON_EXTRACT(properties, '$.cloudProviders') as "cloud_providers",
JSON_EXTRACT(properties, '$.policySetDefinitionId') as "policy_set_definition_id",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
scope,
standardId
FROM azure.security.standards
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.standardType') as "standard_type",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.assessments') as "assessments",
json_extract_path_text(properties, '$.cloudProviders') as "cloud_providers",
json_extract_path_text(properties, '$.policySetDefinitionId') as "policy_set_definition_id",
json_extract_path_text(properties, '$.metadata') as "metadata",
scope,
standardId
FROM azure.security.standards
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
