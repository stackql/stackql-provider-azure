--- 
title: vw_serverless_runtimes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_serverless_runtimes
  - informatica
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

Creates, updates, deletes, gets or lists a <code>vw_serverless_runtimes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_serverless_runtimes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.informatica.vw_serverless_runtimes" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.platform') as "platform",
JSON_EXTRACT(properties, '$.applicationType') as "application_type",
JSON_EXTRACT(properties, '$.computeUnits') as "compute_units",
JSON_EXTRACT(properties, '$.executionTimeout') as "execution_timeout",
JSON_EXTRACT(properties, '$.serverlessAccountLocation') as "serverless_account_location",
JSON_EXTRACT(properties, '$.serverlessRuntimeNetworkProfile') as "serverless_runtime_network_profile",
JSON_EXTRACT(properties, '$.advancedCustomProperties') as "advanced_custom_properties",
JSON_EXTRACT(properties, '$.supplementaryFileLocation') as "supplementary_file_location",
JSON_EXTRACT(properties, '$.serverlessRuntimeConfig') as "serverless_runtime_config",
JSON_EXTRACT(properties, '$.serverlessRuntimeTags') as "serverless_runtime_tags",
JSON_EXTRACT(properties, '$.serverlessRuntimeUserContextProperties') as "serverless_runtime_user_context_properties",
subscriptionId,
resourceGroupName,
organizationName,
serverlessRuntimeName
FROM azure_isv.informatica.serverless_runtimes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND organizationName = 'replace-me' AND serverlessRuntimeName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.platform') as "platform",
json_extract_path_text(properties, '$.applicationType') as "application_type",
json_extract_path_text(properties, '$.computeUnits') as "compute_units",
json_extract_path_text(properties, '$.executionTimeout') as "execution_timeout",
json_extract_path_text(properties, '$.serverlessAccountLocation') as "serverless_account_location",
json_extract_path_text(properties, '$.serverlessRuntimeNetworkProfile') as "serverless_runtime_network_profile",
json_extract_path_text(properties, '$.advancedCustomProperties') as "advanced_custom_properties",
json_extract_path_text(properties, '$.supplementaryFileLocation') as "supplementary_file_location",
json_extract_path_text(properties, '$.serverlessRuntimeConfig') as "serverless_runtime_config",
json_extract_path_text(properties, '$.serverlessRuntimeTags') as "serverless_runtime_tags",
json_extract_path_text(properties, '$.serverlessRuntimeUserContextProperties') as "serverless_runtime_user_context_properties",
subscriptionId,
resourceGroupName,
organizationName,
serverlessRuntimeName
FROM azure_isv.informatica.serverless_runtimes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND organizationName = 'replace-me' AND serverlessRuntimeName = 'replace-me';
```

</TabItem>
</Tabs>
