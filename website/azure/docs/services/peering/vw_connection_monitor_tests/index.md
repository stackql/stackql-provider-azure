--- 
title: vw_connection_monitor_tests
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connection_monitor_tests
  - peering
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

Creates, updates, deletes, gets or lists a <code>vw_connection_monitor_tests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connection_monitor_tests</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.vw_connection_monitor_tests" /></td></tr>
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
JSON_EXTRACT(properties, '$.sourceAgent') as "source_agent",
JSON_EXTRACT(properties, '$.destination') as "destination",
JSON_EXTRACT(properties, '$.destinationPort') as "destination_port",
JSON_EXTRACT(properties, '$.testFrequencyInSec') as "test_frequency_in_sec",
JSON_EXTRACT(properties, '$.isTestSuccessful') as "is_test_successful",
JSON_EXTRACT(properties, '$.path') as "path",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
peeringServiceName,
connectionMonitorTestName
FROM azure.peering.connection_monitor_tests
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND peeringServiceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.sourceAgent') as "source_agent",
json_extract_path_text(properties, '$.destination') as "destination",
json_extract_path_text(properties, '$.destinationPort') as "destination_port",
json_extract_path_text(properties, '$.testFrequencyInSec') as "test_frequency_in_sec",
json_extract_path_text(properties, '$.isTestSuccessful') as "is_test_successful",
json_extract_path_text(properties, '$.path') as "path",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
peeringServiceName,
connectionMonitorTestName
FROM azure.peering.connection_monitor_tests
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND peeringServiceName = 'replace-me';
```

</TabItem>
</Tabs>
