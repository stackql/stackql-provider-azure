--- 
title: vw_incidents
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_incidents
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

Creates, updates, deletes, gets or lists a <code>vw_incidents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_incidents</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_incidents" /></td></tr>
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
JSON_EXTRACT(properties, '$.additionalData') as "additional_data",
JSON_EXTRACT(properties, '$.classification') as "classification",
JSON_EXTRACT(properties, '$.classificationComment') as "classification_comment",
JSON_EXTRACT(properties, '$.classificationReason') as "classification_reason",
JSON_EXTRACT(properties, '$.createdTimeUtc') as "created_time_utc",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.firstActivityTimeUtc') as "first_activity_time_utc",
JSON_EXTRACT(properties, '$.incidentUrl') as "incident_url",
JSON_EXTRACT(properties, '$.providerName') as "provider_name",
JSON_EXTRACT(properties, '$.providerIncidentId') as "provider_incident_id",
JSON_EXTRACT(properties, '$.incidentNumber') as "incident_number",
JSON_EXTRACT(properties, '$.labels') as "labels",
JSON_EXTRACT(properties, '$.lastActivityTimeUtc') as "last_activity_time_utc",
JSON_EXTRACT(properties, '$.lastModifiedTimeUtc') as "last_modified_time_utc",
JSON_EXTRACT(properties, '$.owner') as "owner",
JSON_EXTRACT(properties, '$.relatedAnalyticRuleIds') as "related_analytic_rule_ids",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.title') as "title",
subscriptionId,
resourceGroupName,
workspaceName,
incidentId
FROM azure.sentinel.incidents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.additionalData') as "additional_data",
json_extract_path_text(properties, '$.classification') as "classification",
json_extract_path_text(properties, '$.classificationComment') as "classification_comment",
json_extract_path_text(properties, '$.classificationReason') as "classification_reason",
json_extract_path_text(properties, '$.createdTimeUtc') as "created_time_utc",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.firstActivityTimeUtc') as "first_activity_time_utc",
json_extract_path_text(properties, '$.incidentUrl') as "incident_url",
json_extract_path_text(properties, '$.providerName') as "provider_name",
json_extract_path_text(properties, '$.providerIncidentId') as "provider_incident_id",
json_extract_path_text(properties, '$.incidentNumber') as "incident_number",
json_extract_path_text(properties, '$.labels') as "labels",
json_extract_path_text(properties, '$.lastActivityTimeUtc') as "last_activity_time_utc",
json_extract_path_text(properties, '$.lastModifiedTimeUtc') as "last_modified_time_utc",
json_extract_path_text(properties, '$.owner') as "owner",
json_extract_path_text(properties, '$.relatedAnalyticRuleIds') as "related_analytic_rule_ids",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.title') as "title",
subscriptionId,
resourceGroupName,
workspaceName,
incidentId
FROM azure.sentinel.incidents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
