--- 
title: vw_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connectors
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

Creates, updates, deletes, gets or lists a <code>vw_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_connectors" /></td></tr>
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
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.hierarchyIdentifier') as "hierarchy_identifier",
JSON_EXTRACT(properties, '$.hierarchyIdentifierTrialEndDate') as "hierarchy_identifier_trial_end_date",
JSON_EXTRACT(properties, '$.environmentName') as "environment_name",
JSON_EXTRACT(properties, '$.offerings') as "offerings",
JSON_EXTRACT(properties, '$.environmentData') as "environment_data",
subscriptionId,
resourceGroupName,
securityConnectorName
FROM azure.security.connectors
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.hierarchyIdentifier') as "hierarchy_identifier",
json_extract_path_text(properties, '$.hierarchyIdentifierTrialEndDate') as "hierarchy_identifier_trial_end_date",
json_extract_path_text(properties, '$.environmentName') as "environment_name",
json_extract_path_text(properties, '$.offerings') as "offerings",
json_extract_path_text(properties, '$.environmentData') as "environment_data",
subscriptionId,
resourceGroupName,
securityConnectorName
FROM azure.security.connectors
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
