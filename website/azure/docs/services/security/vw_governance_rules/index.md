--- 
title: vw_governance_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_governance_rules
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

Creates, updates, deletes, gets or lists a <code>vw_governance_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_governance_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_governance_rules" /></td></tr>
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
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.remediationTimeframe') as "remediation_timeframe",
JSON_EXTRACT(properties, '$.isGracePeriod') as "is_grace_period",
JSON_EXTRACT(properties, '$.rulePriority') as "rule_priority",
JSON_EXTRACT(properties, '$.isDisabled') as "is_disabled",
JSON_EXTRACT(properties, '$.ruleType') as "rule_type",
JSON_EXTRACT(properties, '$.sourceResourceType') as "source_resource_type",
JSON_EXTRACT(properties, '$.excludedScopes') as "excluded_scopes",
JSON_EXTRACT(properties, '$.conditionSets') as "condition_sets",
JSON_EXTRACT(properties, '$.includeMemberScopes') as "include_member_scopes",
JSON_EXTRACT(properties, '$.ownerSource') as "owner_source",
JSON_EXTRACT(properties, '$.governanceEmailNotification') as "governance_email_notification",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
scope,
ruleId
FROM azure.security.governance_rules
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
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.remediationTimeframe') as "remediation_timeframe",
json_extract_path_text(properties, '$.isGracePeriod') as "is_grace_period",
json_extract_path_text(properties, '$.rulePriority') as "rule_priority",
json_extract_path_text(properties, '$.isDisabled') as "is_disabled",
json_extract_path_text(properties, '$.ruleType') as "rule_type",
json_extract_path_text(properties, '$.sourceResourceType') as "source_resource_type",
json_extract_path_text(properties, '$.excludedScopes') as "excluded_scopes",
json_extract_path_text(properties, '$.conditionSets') as "condition_sets",
json_extract_path_text(properties, '$.includeMemberScopes') as "include_member_scopes",
json_extract_path_text(properties, '$.ownerSource') as "owner_source",
json_extract_path_text(properties, '$.governanceEmailNotification') as "governance_email_notification",
json_extract_path_text(properties, '$.metadata') as "metadata",
scope,
ruleId
FROM azure.security.governance_rules
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
