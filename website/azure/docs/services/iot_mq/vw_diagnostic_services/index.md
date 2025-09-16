--- 
title: vw_diagnostic_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_diagnostic_services
  - iot_mq
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

Creates, updates, deletes, gets or lists a <code>vw_diagnostic_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_diagnostic_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_mq.vw_diagnostic_services" /></td></tr>
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
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.dataExportFrequencySeconds') as "data_export_frequency_seconds",
JSON_EXTRACT(properties, '$.image') as "image",
JSON_EXTRACT(properties, '$.logFormat') as "log_format",
JSON_EXTRACT(properties, '$.logLevel') as "log_level",
JSON_EXTRACT(properties, '$.maxDataStorageSize') as "max_data_storage_size",
JSON_EXTRACT(properties, '$.metricsPort') as "metrics_port",
JSON_EXTRACT(properties, '$.openTelemetryTracesCollectorAddr') as "open_telemetry_traces_collector_addr",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.staleDataTimeoutSeconds') as "stale_data_timeout_seconds",
subscriptionId,
resourceGroupName,
mqName,
diagnosticServiceName
FROM azure.iot_mq.diagnostic_services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.dataExportFrequencySeconds') as "data_export_frequency_seconds",
json_extract_path_text(properties, '$.image') as "image",
json_extract_path_text(properties, '$.logFormat') as "log_format",
json_extract_path_text(properties, '$.logLevel') as "log_level",
json_extract_path_text(properties, '$.maxDataStorageSize') as "max_data_storage_size",
json_extract_path_text(properties, '$.metricsPort') as "metrics_port",
json_extract_path_text(properties, '$.openTelemetryTracesCollectorAddr') as "open_telemetry_traces_collector_addr",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.staleDataTimeoutSeconds') as "stale_data_timeout_seconds",
subscriptionId,
resourceGroupName,
mqName,
diagnosticServiceName
FROM azure.iot_mq.diagnostic_services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me';
```

</TabItem>
</Tabs>
