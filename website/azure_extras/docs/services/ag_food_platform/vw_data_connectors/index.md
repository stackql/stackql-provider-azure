--- 
title: vw_data_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_connectors
  - ag_food_platform
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_data_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.vw_data_connectors" /></td></tr>
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
eTag as e_tag,
JSON_EXTRACT(properties, '$.credentials') as "credentials",
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName,
dataConnectorName
FROM azure_extras.ag_food_platform.data_connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerForAgricultureResourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
eTag as e_tag,
json_extract_path_text(properties, '$.credentials') as "credentials",
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName,
dataConnectorName
FROM azure_extras.ag_food_platform.data_connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerForAgricultureResourceName = 'replace-me';
```

</TabItem>
</Tabs>
