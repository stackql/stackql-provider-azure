--- 
title: vw_role_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_role_assignments
  - customer_insights
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

Creates, updates, deletes, gets or lists a <code>vw_role_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_role_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_role_assignments" /></td></tr>
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
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.assignmentName') as "assignment_name",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.role') as "role",
JSON_EXTRACT(properties, '$.principals') as "principals",
JSON_EXTRACT(properties, '$.profiles') as "profiles",
JSON_EXTRACT(properties, '$.interactions') as "interactions",
JSON_EXTRACT(properties, '$.links') as "links",
JSON_EXTRACT(properties, '$.kpis') as "kpis",
JSON_EXTRACT(properties, '$.sasPolicies') as "sas_policies",
JSON_EXTRACT(properties, '$.connectors') as "connectors",
JSON_EXTRACT(properties, '$.views') as "views",
JSON_EXTRACT(properties, '$.relationshipLinks') as "relationship_links",
JSON_EXTRACT(properties, '$.relationships') as "relationships",
JSON_EXTRACT(properties, '$.widgetTypes') as "widget_types",
JSON_EXTRACT(properties, '$.roleAssignments') as "role_assignments",
JSON_EXTRACT(properties, '$.conflationPolicies') as "conflation_policies",
JSON_EXTRACT(properties, '$.segments') as "segments",
subscriptionId,
resourceGroupName,
hubName,
assignmentName
FROM azure_extras.customer_insights.role_assignments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.assignmentName') as "assignment_name",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.role') as "role",
json_extract_path_text(properties, '$.principals') as "principals",
json_extract_path_text(properties, '$.profiles') as "profiles",
json_extract_path_text(properties, '$.interactions') as "interactions",
json_extract_path_text(properties, '$.links') as "links",
json_extract_path_text(properties, '$.kpis') as "kpis",
json_extract_path_text(properties, '$.sasPolicies') as "sas_policies",
json_extract_path_text(properties, '$.connectors') as "connectors",
json_extract_path_text(properties, '$.views') as "views",
json_extract_path_text(properties, '$.relationshipLinks') as "relationship_links",
json_extract_path_text(properties, '$.relationships') as "relationships",
json_extract_path_text(properties, '$.widgetTypes') as "widget_types",
json_extract_path_text(properties, '$.roleAssignments') as "role_assignments",
json_extract_path_text(properties, '$.conflationPolicies') as "conflation_policies",
json_extract_path_text(properties, '$.segments') as "segments",
subscriptionId,
resourceGroupName,
hubName,
assignmentName
FROM azure_extras.customer_insights.role_assignments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
</Tabs>
