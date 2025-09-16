--- 
title: vw_replication_recovery_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_recovery_plans
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replication_recovery_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_recovery_plans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_recovery_plans" /></td></tr>
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
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.primaryFabricId') as "primary_fabric_id",
JSON_EXTRACT(properties, '$.primaryFabricFriendlyName') as "primary_fabric_friendly_name",
JSON_EXTRACT(properties, '$.recoveryFabricId') as "recovery_fabric_id",
JSON_EXTRACT(properties, '$.recoveryFabricFriendlyName') as "recovery_fabric_friendly_name",
JSON_EXTRACT(properties, '$.failoverDeploymentModel') as "failover_deployment_model",
JSON_EXTRACT(properties, '$.replicationProviders') as "replication_providers",
JSON_EXTRACT(properties, '$.allowedOperations') as "allowed_operations",
JSON_EXTRACT(properties, '$.lastPlannedFailoverTime') as "last_planned_failover_time",
JSON_EXTRACT(properties, '$.lastUnplannedFailoverTime') as "last_unplanned_failover_time",
JSON_EXTRACT(properties, '$.lastTestFailoverTime') as "last_test_failover_time",
JSON_EXTRACT(properties, '$.currentScenario') as "current_scenario",
JSON_EXTRACT(properties, '$.currentScenarioStatus') as "current_scenario_status",
JSON_EXTRACT(properties, '$.currentScenarioStatusDescription') as "current_scenario_status_description",
JSON_EXTRACT(properties, '$.groups') as "groups",
JSON_EXTRACT(properties, '$.providerSpecificDetails') as "provider_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
recoveryPlanName
FROM azure.recovery_services_site_recovery.replication_recovery_plans
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.primaryFabricId') as "primary_fabric_id",
json_extract_path_text(properties, '$.primaryFabricFriendlyName') as "primary_fabric_friendly_name",
json_extract_path_text(properties, '$.recoveryFabricId') as "recovery_fabric_id",
json_extract_path_text(properties, '$.recoveryFabricFriendlyName') as "recovery_fabric_friendly_name",
json_extract_path_text(properties, '$.failoverDeploymentModel') as "failover_deployment_model",
json_extract_path_text(properties, '$.replicationProviders') as "replication_providers",
json_extract_path_text(properties, '$.allowedOperations') as "allowed_operations",
json_extract_path_text(properties, '$.lastPlannedFailoverTime') as "last_planned_failover_time",
json_extract_path_text(properties, '$.lastUnplannedFailoverTime') as "last_unplanned_failover_time",
json_extract_path_text(properties, '$.lastTestFailoverTime') as "last_test_failover_time",
json_extract_path_text(properties, '$.currentScenario') as "current_scenario",
json_extract_path_text(properties, '$.currentScenarioStatus') as "current_scenario_status",
json_extract_path_text(properties, '$.currentScenarioStatusDescription') as "current_scenario_status_description",
json_extract_path_text(properties, '$.groups') as "groups",
json_extract_path_text(properties, '$.providerSpecificDetails') as "provider_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
recoveryPlanName
FROM azure.recovery_services_site_recovery.replication_recovery_plans
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
