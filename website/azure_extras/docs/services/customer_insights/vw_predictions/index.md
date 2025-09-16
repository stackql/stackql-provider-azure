--- 
title: vw_predictions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_predictions
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

Creates, updates, deletes, gets or lists a <code>vw_predictions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_predictions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_predictions" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.involvedInteractionTypes') as "involved_interaction_types",
JSON_EXTRACT(properties, '$.involvedKpiTypes') as "involved_kpi_types",
JSON_EXTRACT(properties, '$.involvedRelationships') as "involved_relationships",
JSON_EXTRACT(properties, '$.negativeOutcomeExpression') as "negative_outcome_expression",
JSON_EXTRACT(properties, '$.positiveOutcomeExpression') as "positive_outcome_expression",
JSON_EXTRACT(properties, '$.primaryProfileType') as "primary_profile_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.predictionName') as "prediction_name",
JSON_EXTRACT(properties, '$.scopeExpression') as "scope_expression",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.autoAnalyze') as "auto_analyze",
JSON_EXTRACT(properties, '$.mappings') as "mappings",
JSON_EXTRACT(properties, '$.scoreLabel') as "score_label",
JSON_EXTRACT(properties, '$.grades') as "grades",
JSON_EXTRACT(properties, '$.systemGeneratedEntities') as "system_generated_entities",
subscriptionId,
resourceGroupName,
hubName,
predictionName
FROM azure_extras.customer_insights.predictions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.involvedInteractionTypes') as "involved_interaction_types",
json_extract_path_text(properties, '$.involvedKpiTypes') as "involved_kpi_types",
json_extract_path_text(properties, '$.involvedRelationships') as "involved_relationships",
json_extract_path_text(properties, '$.negativeOutcomeExpression') as "negative_outcome_expression",
json_extract_path_text(properties, '$.positiveOutcomeExpression') as "positive_outcome_expression",
json_extract_path_text(properties, '$.primaryProfileType') as "primary_profile_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.predictionName') as "prediction_name",
json_extract_path_text(properties, '$.scopeExpression') as "scope_expression",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.autoAnalyze') as "auto_analyze",
json_extract_path_text(properties, '$.mappings') as "mappings",
json_extract_path_text(properties, '$.scoreLabel') as "score_label",
json_extract_path_text(properties, '$.grades') as "grades",
json_extract_path_text(properties, '$.systemGeneratedEntities') as "system_generated_entities",
subscriptionId,
resourceGroupName,
hubName,
predictionName
FROM azure_extras.customer_insights.predictions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
</Tabs>
