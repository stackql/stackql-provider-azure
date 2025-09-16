--- 
title: vw_regulatory_compliance_assessments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_regulatory_compliance_assessments
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

Creates, updates, deletes, gets or lists a <code>vw_regulatory_compliance_assessments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_regulatory_compliance_assessments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_regulatory_compliance_assessments" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.assessmentType') as "assessment_type",
JSON_EXTRACT(properties, '$.assessmentDetailsLink') as "assessment_details_link",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.passedResources') as "passed_resources",
JSON_EXTRACT(properties, '$.failedResources') as "failed_resources",
JSON_EXTRACT(properties, '$.skippedResources') as "skipped_resources",
JSON_EXTRACT(properties, '$.unsupportedResources') as "unsupported_resources",
subscriptionId,
regulatoryComplianceStandardName,
regulatoryComplianceControlName,
regulatoryComplianceAssessmentName
FROM azure.security.regulatory_compliance_assessments
WHERE subscriptionId = 'replace-me' AND regulatoryComplianceStandardName = 'replace-me' AND regulatoryComplianceControlName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.assessmentType') as "assessment_type",
json_extract_path_text(properties, '$.assessmentDetailsLink') as "assessment_details_link",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.passedResources') as "passed_resources",
json_extract_path_text(properties, '$.failedResources') as "failed_resources",
json_extract_path_text(properties, '$.skippedResources') as "skipped_resources",
json_extract_path_text(properties, '$.unsupportedResources') as "unsupported_resources",
subscriptionId,
regulatoryComplianceStandardName,
regulatoryComplianceControlName,
regulatoryComplianceAssessmentName
FROM azure.security.regulatory_compliance_assessments
WHERE subscriptionId = 'replace-me' AND regulatoryComplianceStandardName = 'replace-me' AND regulatoryComplianceControlName = 'replace-me';
```

</TabItem>
</Tabs>
