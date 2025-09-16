--- 
title: vw_test_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_test_summaries
  - test_base
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

Creates, updates, deletes, gets or lists a <code>vw_test_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_test_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_test_summaries" /></td></tr>
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
JSON_EXTRACT(properties, '$.testSummaryId') as "test_summary_id",
JSON_EXTRACT(properties, '$.packageId') as "package_id",
JSON_EXTRACT(properties, '$.applicationName') as "application_name",
JSON_EXTRACT(properties, '$.applicationVersion') as "application_version",
JSON_EXTRACT(properties, '$.executionStatus') as "execution_status",
JSON_EXTRACT(properties, '$.testStatus') as "test_status",
JSON_EXTRACT(properties, '$.grade') as "grade",
JSON_EXTRACT(properties, '$.testRunTime') as "test_run_time",
JSON_EXTRACT(properties, '$.featureUpdatesTestSummary') as "feature_updates_test_summary",
JSON_EXTRACT(properties, '$.securityUpdatesTestSummary') as "security_updates_test_summary",
JSON_EXTRACT(properties, '$.inplaceUpgradesTestSummary') as "inplace_upgrades_test_summary",
JSON_EXTRACT(properties, '$.packageTags') as "package_tags",
subscriptionId,
resourceGroupName,
testBaseAccountName,
testSummaryName
FROM azure_extras.test_base.test_summaries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.testSummaryId') as "test_summary_id",
json_extract_path_text(properties, '$.packageId') as "package_id",
json_extract_path_text(properties, '$.applicationName') as "application_name",
json_extract_path_text(properties, '$.applicationVersion') as "application_version",
json_extract_path_text(properties, '$.executionStatus') as "execution_status",
json_extract_path_text(properties, '$.testStatus') as "test_status",
json_extract_path_text(properties, '$.grade') as "grade",
json_extract_path_text(properties, '$.testRunTime') as "test_run_time",
json_extract_path_text(properties, '$.featureUpdatesTestSummary') as "feature_updates_test_summary",
json_extract_path_text(properties, '$.securityUpdatesTestSummary') as "security_updates_test_summary",
json_extract_path_text(properties, '$.inplaceUpgradesTestSummary') as "inplace_upgrades_test_summary",
json_extract_path_text(properties, '$.packageTags') as "package_tags",
subscriptionId,
resourceGroupName,
testBaseAccountName,
testSummaryName
FROM azure_extras.test_base.test_summaries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
</Tabs>
