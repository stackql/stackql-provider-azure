--- 
title: vw_governance_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_governance_assignments
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

Creates, updates, deletes, gets or lists a <code>vw_governance_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_governance_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_governance_assignments" /></td></tr>
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
JSON_EXTRACT(properties, '$.owner') as "owner",
JSON_EXTRACT(properties, '$.remediationDueDate') as "remediation_due_date",
JSON_EXTRACT(properties, '$.remediationEta') as "remediation_eta",
JSON_EXTRACT(properties, '$.isGracePeriod') as "is_grace_period",
JSON_EXTRACT(properties, '$.governanceEmailNotification') as "governance_email_notification",
JSON_EXTRACT(properties, '$.additionalData') as "additional_data",
scope,
assessmentName,
assignmentKey
FROM azure.security.governance_assignments
WHERE scope = 'replace-me' AND assessmentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.owner') as "owner",
json_extract_path_text(properties, '$.remediationDueDate') as "remediation_due_date",
json_extract_path_text(properties, '$.remediationEta') as "remediation_eta",
json_extract_path_text(properties, '$.isGracePeriod') as "is_grace_period",
json_extract_path_text(properties, '$.governanceEmailNotification') as "governance_email_notification",
json_extract_path_text(properties, '$.additionalData') as "additional_data",
scope,
assessmentName,
assignmentKey
FROM azure.security.governance_assignments
WHERE scope = 'replace-me' AND assessmentName = 'replace-me';
```

</TabItem>
</Tabs>
