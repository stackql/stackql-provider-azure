--- 
title: vw_hyperv_sites_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hyperv_sites_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>vw_hyperv_sites_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hyperv_sites_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_hyperv_sites_controllers" /></td></tr>
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
JSON_EXTRACT(properties, '$.masterSiteId') as "master_site_id",
JSON_EXTRACT(properties, '$.servicePrincipalIdentityDetails') as "service_principal_identity_details",
JSON_EXTRACT(properties, '$.agentDetails') as "agent_details",
JSON_EXTRACT(properties, '$.applianceName') as "appliance_name",
JSON_EXTRACT(properties, '$.discoverySolutionId') as "discovery_solution_id",
JSON_EXTRACT(properties, '$.serviceEndpoint') as "service_endpoint",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName
FROM azure.migrate.hyperv_sites_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.masterSiteId') as "master_site_id",
json_extract_path_text(properties, '$.servicePrincipalIdentityDetails') as "service_principal_identity_details",
json_extract_path_text(properties, '$.agentDetails') as "agent_details",
json_extract_path_text(properties, '$.applianceName') as "appliance_name",
json_extract_path_text(properties, '$.discoverySolutionId') as "discovery_solution_id",
json_extract_path_text(properties, '$.serviceEndpoint') as "service_endpoint",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName
FROM azure.migrate.hyperv_sites_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
</Tabs>
