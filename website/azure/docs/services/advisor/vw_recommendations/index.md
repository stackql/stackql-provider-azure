--- 
title: vw_recommendations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_recommendations
  - advisor
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

Creates, updates, deletes, gets or lists a <code>vw_recommendations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_recommendations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.advisor.vw_recommendations" /></td></tr>
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
JSON_EXTRACT(properties, '$.category') as "category",
JSON_EXTRACT(properties, '$.impact') as "impact",
JSON_EXTRACT(properties, '$.impactedField') as "impacted_field",
JSON_EXTRACT(properties, '$.impactedValue') as "impacted_value",
JSON_EXTRACT(properties, '$.lastUpdated') as "last_updated",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.recommendationTypeId') as "recommendation_type_id",
JSON_EXTRACT(properties, '$.risk') as "risk",
JSON_EXTRACT(properties, '$.shortDescription') as "short_description",
JSON_EXTRACT(properties, '$.suppressionIds') as "suppression_ids",
JSON_EXTRACT(properties, '$.extendedProperties') as "extended_properties",
JSON_EXTRACT(properties, '$.resourceMetadata') as "resource_metadata",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.label') as "label",
JSON_EXTRACT(properties, '$.learnMoreLink') as "learn_more_link",
JSON_EXTRACT(properties, '$.potentialBenefits') as "potential_benefits",
JSON_EXTRACT(properties, '$.actions') as "actions",
JSON_EXTRACT(properties, '$.remediation') as "remediation",
JSON_EXTRACT(properties, '$.exposedMetadataProperties') as "exposed_metadata_properties",
resourceUri,
recommendationId,
subscriptionId
FROM azure.advisor.recommendations
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
json_extract_path_text(properties, '$.category') as "category",
json_extract_path_text(properties, '$.impact') as "impact",
json_extract_path_text(properties, '$.impactedField') as "impacted_field",
json_extract_path_text(properties, '$.impactedValue') as "impacted_value",
json_extract_path_text(properties, '$.lastUpdated') as "last_updated",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.recommendationTypeId') as "recommendation_type_id",
json_extract_path_text(properties, '$.risk') as "risk",
json_extract_path_text(properties, '$.shortDescription') as "short_description",
json_extract_path_text(properties, '$.suppressionIds') as "suppression_ids",
json_extract_path_text(properties, '$.extendedProperties') as "extended_properties",
json_extract_path_text(properties, '$.resourceMetadata') as "resource_metadata",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.label') as "label",
json_extract_path_text(properties, '$.learnMoreLink') as "learn_more_link",
json_extract_path_text(properties, '$.potentialBenefits') as "potential_benefits",
json_extract_path_text(properties, '$.actions') as "actions",
json_extract_path_text(properties, '$.remediation') as "remediation",
json_extract_path_text(properties, '$.exposedMetadataProperties') as "exposed_metadata_properties",
resourceUri,
recommendationId,
subscriptionId
FROM azure.advisor.recommendations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
