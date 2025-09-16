--- 
title: vw_organization_schema_registry_cluster_by_ids
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_organization_schema_registry_cluster_by_ids
  - confluent
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

Creates, updates, deletes, gets or lists a <code>vw_organization_schema_registry_cluster_by_ids</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_organization_schema_registry_cluster_by_ids</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.confluent.vw_organization_schema_registry_cluster_by_ids" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.spec') as "spec",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
organizationName,
environmentId,
clusterId
FROM azure_isv.confluent.organization_schema_registry_cluster_by_ids
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND organizationName = 'replace-me' AND environmentId = 'replace-me' AND clusterId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
kind as kind,
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.spec') as "spec",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
organizationName,
environmentId,
clusterId
FROM azure_isv.confluent.organization_schema_registry_cluster_by_ids
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND organizationName = 'replace-me' AND environmentId = 'replace-me' AND clusterId = 'replace-me';
```

</TabItem>
</Tabs>
