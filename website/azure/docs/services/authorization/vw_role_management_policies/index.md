--- 
title: vw_role_management_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_role_management_policies
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

Creates, updates, deletes, gets or lists a <code>vw_role_management_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_role_management_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_role_management_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.isOrganizationDefault') as "is_organization_default",
JSON_EXTRACT(properties, '$.lastModifiedBy') as "last_modified_by",
JSON_EXTRACT(properties, '$.lastModifiedDateTime') as "last_modified_date_time",
JSON_EXTRACT(properties, '$.rules') as "rules",
JSON_EXTRACT(properties, '$.effectiveRules') as "effective_rules",
JSON_EXTRACT(properties, '$.policyProperties') as "policy_properties",
scope,
roleManagementPolicyName
FROM azure.authorization.role_management_policies
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.isOrganizationDefault') as "is_organization_default",
json_extract_path_text(properties, '$.lastModifiedBy') as "last_modified_by",
json_extract_path_text(properties, '$.lastModifiedDateTime') as "last_modified_date_time",
json_extract_path_text(properties, '$.rules') as "rules",
json_extract_path_text(properties, '$.effectiveRules') as "effective_rules",
json_extract_path_text(properties, '$.policyProperties') as "policy_properties",
scope,
roleManagementPolicyName
FROM azure.authorization.role_management_policies
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
