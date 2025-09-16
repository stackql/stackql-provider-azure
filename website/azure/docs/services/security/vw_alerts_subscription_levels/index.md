--- 
title: vw_alerts_subscription_levels
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alerts_subscription_levels
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

Creates, updates, deletes, gets or lists a <code>vw_alerts_subscription_levels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alerts_subscription_levels</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_alerts_subscription_levels" /></td></tr>
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
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.alertType') as "alert_type",
JSON_EXTRACT(properties, '$.systemAlertId') as "system_alert_id",
JSON_EXTRACT(properties, '$.productComponentName') as "product_component_name",
JSON_EXTRACT(properties, '$.alertDisplayName') as "alert_display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.intent') as "intent",
JSON_EXTRACT(properties, '$.startTimeUtc') as "start_time_utc",
JSON_EXTRACT(properties, '$.endTimeUtc') as "end_time_utc",
JSON_EXTRACT(properties, '$.resourceIdentifiers') as "resource_identifiers",
JSON_EXTRACT(properties, '$.remediationSteps') as "remediation_steps",
JSON_EXTRACT(properties, '$.vendorName') as "vendor_name",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.extendedLinks') as "extended_links",
JSON_EXTRACT(properties, '$.alertUri') as "alert_uri",
JSON_EXTRACT(properties, '$.timeGeneratedUtc') as "time_generated_utc",
JSON_EXTRACT(properties, '$.productName') as "product_name",
JSON_EXTRACT(properties, '$.processingEndTimeUtc') as "processing_end_time_utc",
JSON_EXTRACT(properties, '$.entities') as "entities",
JSON_EXTRACT(properties, '$.isIncident') as "is_incident",
JSON_EXTRACT(properties, '$.correlationKey') as "correlation_key",
JSON_EXTRACT(properties, '$.extendedProperties') as "extended_properties",
JSON_EXTRACT(properties, '$.compromisedEntity') as "compromised_entity",
JSON_EXTRACT(properties, '$.techniques') as "techniques",
JSON_EXTRACT(properties, '$.subTechniques') as "sub_techniques",
JSON_EXTRACT(properties, '$.supportingEvidence') as "supporting_evidence",
subscriptionId,
ascLocation,
alertName
FROM azure.security.alerts_subscription_levels
WHERE subscriptionId = 'replace-me' AND ascLocation = 'replace-me' AND alertName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.alertType') as "alert_type",
json_extract_path_text(properties, '$.systemAlertId') as "system_alert_id",
json_extract_path_text(properties, '$.productComponentName') as "product_component_name",
json_extract_path_text(properties, '$.alertDisplayName') as "alert_display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.intent') as "intent",
json_extract_path_text(properties, '$.startTimeUtc') as "start_time_utc",
json_extract_path_text(properties, '$.endTimeUtc') as "end_time_utc",
json_extract_path_text(properties, '$.resourceIdentifiers') as "resource_identifiers",
json_extract_path_text(properties, '$.remediationSteps') as "remediation_steps",
json_extract_path_text(properties, '$.vendorName') as "vendor_name",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.extendedLinks') as "extended_links",
json_extract_path_text(properties, '$.alertUri') as "alert_uri",
json_extract_path_text(properties, '$.timeGeneratedUtc') as "time_generated_utc",
json_extract_path_text(properties, '$.productName') as "product_name",
json_extract_path_text(properties, '$.processingEndTimeUtc') as "processing_end_time_utc",
json_extract_path_text(properties, '$.entities') as "entities",
json_extract_path_text(properties, '$.isIncident') as "is_incident",
json_extract_path_text(properties, '$.correlationKey') as "correlation_key",
json_extract_path_text(properties, '$.extendedProperties') as "extended_properties",
json_extract_path_text(properties, '$.compromisedEntity') as "compromised_entity",
json_extract_path_text(properties, '$.techniques') as "techniques",
json_extract_path_text(properties, '$.subTechniques') as "sub_techniques",
json_extract_path_text(properties, '$.supportingEvidence') as "supporting_evidence",
subscriptionId,
ascLocation,
alertName
FROM azure.security.alerts_subscription_levels
WHERE subscriptionId = 'replace-me' AND ascLocation = 'replace-me' AND alertName = 'replace-me';
```

</TabItem>
</Tabs>
