--- 
title: vw_regulatory_compliance_standards
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_regulatory_compliance_standards
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

Creates, updates, deletes, gets or lists a <code>vw_regulatory_compliance_standards</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_regulatory_compliance_standards</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_regulatory_compliance_standards" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.passedControls') as "passed_controls",
JSON_EXTRACT(properties, '$.failedControls') as "failed_controls",
JSON_EXTRACT(properties, '$.skippedControls') as "skipped_controls",
JSON_EXTRACT(properties, '$.unsupportedControls') as "unsupported_controls",
subscriptionId,
regulatoryComplianceStandardName
FROM azure.security.regulatory_compliance_standards
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.passedControls') as "passed_controls",
json_extract_path_text(properties, '$.failedControls') as "failed_controls",
json_extract_path_text(properties, '$.skippedControls') as "skipped_controls",
json_extract_path_text(properties, '$.unsupportedControls') as "unsupported_controls",
subscriptionId,
regulatoryComplianceStandardName
FROM azure.security.regulatory_compliance_standards
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
