--- 
title: vw_geographic_hierarchies_defaults
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_geographic_hierarchies_defaults
  - traffic_manager
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

Creates, updates, deletes, gets or lists a <code>vw_geographic_hierarchies_defaults</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_geographic_hierarchies_defaults</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.traffic_manager.vw_geographic_hierarchies_defaults" /></td></tr>
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
JSON_EXTRACT(properties, '$.geographicHierarchy') as "geographic_hierarchy"
FROM azure.traffic_manager.geographic_hierarchies_defaults
;
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.geographicHierarchy') as "geographic_hierarchy"
FROM azure.traffic_manager.geographic_hierarchies_defaults
;
```

</TabItem>
</Tabs>
