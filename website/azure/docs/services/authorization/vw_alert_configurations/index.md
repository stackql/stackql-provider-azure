--- 
title: vw_alert_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alert_configurations
  - authorization
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

Creates, updates, deletes, gets or lists a <code>vw_alert_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alert_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_alert_configurations" /></td></tr>
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
JSON_EXTRACT(properties, '$.alertDefinitionId') as "alert_definition_id",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.isEnabled') as "is_enabled",
JSON_EXTRACT(properties, '$.alertConfigurationType') as "alert_configuration_type",
JSON_EXTRACT(properties, '$.alertDefinition') as "alert_definition",
scope,
alertId
FROM azure.authorization.alert_configurations
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.alertDefinitionId') as "alert_definition_id",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.isEnabled') as "is_enabled",
json_extract_path_text(properties, '$.alertConfigurationType') as "alert_configuration_type",
json_extract_path_text(properties, '$.alertDefinition') as "alert_definition",
scope,
alertId
FROM azure.authorization.alert_configurations
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
