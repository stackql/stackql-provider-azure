--- 
title: vw_sap_landscape_monitors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sap_landscape_monitors
  - sap_workloads
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_sap_landscape_monitors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sap_landscape_monitors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.sap_workloads.vw_sap_landscape_monitors" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.grouping') as "grouping",
JSON_EXTRACT(properties, '$.topMetricsThresholds') as "top_metrics_thresholds",
subscriptionId,
resourceGroupName,
monitorName
FROM azure_isv.sap_workloads.sap_landscape_monitors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.grouping') as "grouping",
json_extract_path_text(properties, '$.topMetricsThresholds') as "top_metrics_thresholds",
subscriptionId,
resourceGroupName,
monitorName
FROM azure_isv.sap_workloads.sap_landscape_monitors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
</Tabs>
