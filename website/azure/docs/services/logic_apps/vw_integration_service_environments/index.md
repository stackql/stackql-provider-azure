--- 
title: vw_integration_service_environments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_integration_service_environments
  - logic_apps
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

Creates, updates, deletes, gets or lists a <code>vw_integration_service_environments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_integration_service_environments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.vw_integration_service_environments" /></td></tr>
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
sku as sku,
identity as identity,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.integrationServiceEnvironmentId') as "integration_service_environment_id",
JSON_EXTRACT(properties, '$.endpointsConfiguration') as "endpoints_configuration",
JSON_EXTRACT(properties, '$.networkConfiguration') as "network_configuration",
JSON_EXTRACT(properties, '$.encryptionConfiguration') as "encryption_configuration",
subscriptionId,
resourceGroup,
integrationServiceEnvironmentName
FROM azure.logic_apps.integration_service_environments
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
sku as sku,
identity as identity,
type as type,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.integrationServiceEnvironmentId') as "integration_service_environment_id",
json_extract_path_text(properties, '$.endpointsConfiguration') as "endpoints_configuration",
json_extract_path_text(properties, '$.networkConfiguration') as "network_configuration",
json_extract_path_text(properties, '$.encryptionConfiguration') as "encryption_configuration",
subscriptionId,
resourceGroup,
integrationServiceEnvironmentName
FROM azure.logic_apps.integration_service_environments
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
