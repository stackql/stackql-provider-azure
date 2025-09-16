--- 
title: vw_incident_relations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_incident_relations
  - sentinel
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

Creates, updates, deletes, gets or lists a <code>vw_incident_relations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_incident_relations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_incident_relations" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.relatedResourceId') as "related_resource_id",
JSON_EXTRACT(properties, '$.relatedResourceName') as "related_resource_name",
JSON_EXTRACT(properties, '$.relatedResourceType') as "related_resource_type",
JSON_EXTRACT(properties, '$.relatedResourceKind') as "related_resource_kind",
subscriptionId,
resourceGroupName,
workspaceName,
incidentId,
relationName
FROM azure.sentinel.incident_relations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND incidentId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.relatedResourceId') as "related_resource_id",
json_extract_path_text(properties, '$.relatedResourceName') as "related_resource_name",
json_extract_path_text(properties, '$.relatedResourceType') as "related_resource_type",
json_extract_path_text(properties, '$.relatedResourceKind') as "related_resource_kind",
subscriptionId,
resourceGroupName,
workspaceName,
incidentId,
relationName
FROM azure.sentinel.incident_relations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND incidentId = 'replace-me';
```

</TabItem>
</Tabs>
