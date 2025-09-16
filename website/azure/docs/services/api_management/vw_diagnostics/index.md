--- 
title: vw_diagnostics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_diagnostics
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_diagnostics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_diagnostics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_diagnostics" /></td></tr>
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
JSON_EXTRACT(properties, '$.alwaysLog') as "always_log",
JSON_EXTRACT(properties, '$.loggerId') as "logger_id",
JSON_EXTRACT(properties, '$.sampling') as "sampling",
JSON_EXTRACT(properties, '$.frontend') as "frontend",
JSON_EXTRACT(properties, '$.backend') as "backend",
JSON_EXTRACT(properties, '$.logClientIp') as "log_client_ip",
JSON_EXTRACT(properties, '$.httpCorrelationProtocol') as "http_correlation_protocol",
JSON_EXTRACT(properties, '$.verbosity') as "verbosity",
JSON_EXTRACT(properties, '$.operationNameFormat') as "operation_name_format",
JSON_EXTRACT(properties, '$.metrics') as "metrics",
subscriptionId,
resourceGroupName,
serviceName,
diagnosticId
FROM azure.api_management.diagnostics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.alwaysLog') as "always_log",
json_extract_path_text(properties, '$.loggerId') as "logger_id",
json_extract_path_text(properties, '$.sampling') as "sampling",
json_extract_path_text(properties, '$.frontend') as "frontend",
json_extract_path_text(properties, '$.backend') as "backend",
json_extract_path_text(properties, '$.logClientIp') as "log_client_ip",
json_extract_path_text(properties, '$.httpCorrelationProtocol') as "http_correlation_protocol",
json_extract_path_text(properties, '$.verbosity') as "verbosity",
json_extract_path_text(properties, '$.operationNameFormat') as "operation_name_format",
json_extract_path_text(properties, '$.metrics') as "metrics",
subscriptionId,
resourceGroupName,
serviceName,
diagnosticId
FROM azure.api_management.diagnostics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
