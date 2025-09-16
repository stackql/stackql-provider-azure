--- 
title: vw_web_tests
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_web_tests
  - application_insights
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

Creates, updates, deletes, gets or lists a <code>vw_web_tests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_web_tests</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.vw_web_tests" /></td></tr>
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
location as location,
type as type,
tags as tags,
kind as kind,
JSON_EXTRACT(properties, '$.SyntheticMonitorId') as "synthetic_monitor_id",
JSON_EXTRACT(properties, '$.Name') as "name",
JSON_EXTRACT(properties, '$.Description') as "description",
JSON_EXTRACT(properties, '$.Enabled') as "enabled",
JSON_EXTRACT(properties, '$.Frequency') as "frequency",
JSON_EXTRACT(properties, '$.Timeout') as "timeout",
JSON_EXTRACT(properties, '$.Kind') as "kind",
JSON_EXTRACT(properties, '$.RetryEnabled') as "retry_enabled",
JSON_EXTRACT(properties, '$.Locations') as "locations",
JSON_EXTRACT(properties, '$.Configuration') as "configuration",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.Request') as "request",
JSON_EXTRACT(properties, '$.ValidationRules') as "validation_rules",
subscriptionId,
resourceGroupName,
webTestName
FROM azure.application_insights.web_tests
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
kind as kind,
json_extract_path_text(properties, '$.SyntheticMonitorId') as "synthetic_monitor_id",
json_extract_path_text(properties, '$.Name') as "name",
json_extract_path_text(properties, '$.Description') as "description",
json_extract_path_text(properties, '$.Enabled') as "enabled",
json_extract_path_text(properties, '$.Frequency') as "frequency",
json_extract_path_text(properties, '$.Timeout') as "timeout",
json_extract_path_text(properties, '$.Kind') as "kind",
json_extract_path_text(properties, '$.RetryEnabled') as "retry_enabled",
json_extract_path_text(properties, '$.Locations') as "locations",
json_extract_path_text(properties, '$.Configuration') as "configuration",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.Request') as "request",
json_extract_path_text(properties, '$.ValidationRules') as "validation_rules",
subscriptionId,
resourceGroupName,
webTestName
FROM azure.application_insights.web_tests
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
