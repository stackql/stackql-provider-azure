--- 
title: vw_assessments_metadata
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_assessments_metadata
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

Creates, updates, deletes, gets or lists a <code>vw_assessments_metadata</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_assessments_metadata</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_assessments_metadata" /></td></tr>
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
JSON_EXTRACT(properties, '$.publishDates') as "publish_dates",
JSON_EXTRACT(properties, '$.plannedDeprecationDate') as "planned_deprecation_date",
JSON_EXTRACT(properties, '$.tactics') as "tactics",
JSON_EXTRACT(properties, '$.techniques') as "techniques",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.policyDefinitionId') as "policy_definition_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.remediationDescription') as "remediation_description",
JSON_EXTRACT(properties, '$.categories') as "categories",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.userImpact') as "user_impact",
JSON_EXTRACT(properties, '$.implementationEffort') as "implementation_effort",
JSON_EXTRACT(properties, '$.threats') as "threats",
JSON_EXTRACT(properties, '$.preview') as "preview",
JSON_EXTRACT(properties, '$.assessmentType') as "assessment_type",
JSON_EXTRACT(properties, '$.partnerData') as "partner_data",
subscriptionId,
assessmentMetadataName
FROM azure.security.assessments_metadata
WHERE subscriptionId = 'replace-me' AND assessmentMetadataName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.publishDates') as "publish_dates",
json_extract_path_text(properties, '$.plannedDeprecationDate') as "planned_deprecation_date",
json_extract_path_text(properties, '$.tactics') as "tactics",
json_extract_path_text(properties, '$.techniques') as "techniques",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.policyDefinitionId') as "policy_definition_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.remediationDescription') as "remediation_description",
json_extract_path_text(properties, '$.categories') as "categories",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.userImpact') as "user_impact",
json_extract_path_text(properties, '$.implementationEffort') as "implementation_effort",
json_extract_path_text(properties, '$.threats') as "threats",
json_extract_path_text(properties, '$.preview') as "preview",
json_extract_path_text(properties, '$.assessmentType') as "assessment_type",
json_extract_path_text(properties, '$.partnerData') as "partner_data",
subscriptionId,
assessmentMetadataName
FROM azure.security.assessments_metadata
WHERE subscriptionId = 'replace-me' AND assessmentMetadataName = 'replace-me';
```

</TabItem>
</Tabs>
