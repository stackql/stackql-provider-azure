--- 
title: vw_alerts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alerts
  - infrastructure_insights_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_alerts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alerts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.infrastructure_insights_admin.vw_alerts" /></td></tr>
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
location as location,
tags as tags,
JSON_EXTRACT(properties, '$.closedTimestamp') as "closed_timestamp",
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.faultId') as "fault_id",
JSON_EXTRACT(properties, '$.alertId') as "alert_id",
JSON_EXTRACT(properties, '$.faultTypeId') as "fault_type_id",
JSON_EXTRACT(properties, '$.lastUpdatedTimestamp') as "last_updated_timestamp",
JSON_EXTRACT(properties, '$.alertProperties') as "alert_properties",
JSON_EXTRACT(properties, '$.remediation') as "remediation",
JSON_EXTRACT(properties, '$.resourceRegistrationId') as "resource_registration_id",
JSON_EXTRACT(properties, '$.resourceProviderRegistrationId') as "resource_provider_registration_id",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.impactedResourceId') as "impacted_resource_id",
JSON_EXTRACT(properties, '$.impactedResourceDisplayName') as "impacted_resource_display_name",
JSON_EXTRACT(properties, '$.closedByUserAlias') as "closed_by_user_alias",
JSON_EXTRACT(properties, '$.hasValidRemediationAction') as "has_valid_remediation_action",
subscriptionId,
resourceGroupName,
location,
alertName
FROM azure_stack.infrastructure_insights_admin.alerts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.closedTimestamp') as "closed_timestamp",
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.faultId') as "fault_id",
json_extract_path_text(properties, '$.alertId') as "alert_id",
json_extract_path_text(properties, '$.faultTypeId') as "fault_type_id",
json_extract_path_text(properties, '$.lastUpdatedTimestamp') as "last_updated_timestamp",
json_extract_path_text(properties, '$.alertProperties') as "alert_properties",
json_extract_path_text(properties, '$.remediation') as "remediation",
json_extract_path_text(properties, '$.resourceRegistrationId') as "resource_registration_id",
json_extract_path_text(properties, '$.resourceProviderRegistrationId') as "resource_provider_registration_id",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.impactedResourceId') as "impacted_resource_id",
json_extract_path_text(properties, '$.impactedResourceDisplayName') as "impacted_resource_display_name",
json_extract_path_text(properties, '$.closedByUserAlias') as "closed_by_user_alias",
json_extract_path_text(properties, '$.hasValidRemediationAction') as "has_valid_remediation_action",
subscriptionId,
resourceGroupName,
location,
alertName
FROM azure_stack.infrastructure_insights_admin.alerts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
