--- 
title: vw_tomcat_web_servers_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tomcat_web_servers_controllers
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

Creates, updates, deletes, gets or lists a <code>vw_tomcat_web_servers_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tomcat_web_servers_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_tomcat_web_servers_controllers" /></td></tr>
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
JSON_EXTRACT(properties, '$.services') as "services",
JSON_EXTRACT(properties, '$.catalinaHome') as "catalina_home",
JSON_EXTRACT(properties, '$.jvmVersion') as "jvm_version",
JSON_EXTRACT(properties, '$.sessionPersistenceMechanism') as "session_persistence_mechanism",
JSON_EXTRACT(properties, '$.isClusteringPresent') as "is_clustering_present",
JSON_EXTRACT(properties, '$.isMemoryRealmPresent') as "is_memory_realm_present",
JSON_EXTRACT(properties, '$.isSessionTrackingPresent') as "is_session_tracking_present",
JSON_EXTRACT(properties, '$.isAccessLogValvePresent') as "is_access_log_valve_present",
JSON_EXTRACT(properties, '$.maxMemoryUsageInMb') as "max_memory_usage_in_mb",
JSON_EXTRACT(properties, '$.configurationLocation') as "configuration_location",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.machineIds') as "machine_ids",
JSON_EXTRACT(properties, '$.webApplications') as "web_applications",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.serverFqdn') as "server_fqdn",
JSON_EXTRACT(properties, '$.runAsAccountId') as "run_as_account_id",
JSON_EXTRACT(properties, '$.operatingSystemDetails') as "operating_system_details",
JSON_EXTRACT(properties, '$.isDeleted') as "is_deleted",
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.updatedTimestamp') as "updated_timestamp",
JSON_EXTRACT(properties, '$.serverType') as "server_type",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.applianceNames') as "appliance_names",
JSON_EXTRACT(properties, '$.hasErrors') as "has_errors",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
webAppSiteName,
webServerName
FROM azure.migrate.tomcat_web_servers_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND webAppSiteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.services') as "services",
json_extract_path_text(properties, '$.catalinaHome') as "catalina_home",
json_extract_path_text(properties, '$.jvmVersion') as "jvm_version",
json_extract_path_text(properties, '$.sessionPersistenceMechanism') as "session_persistence_mechanism",
json_extract_path_text(properties, '$.isClusteringPresent') as "is_clustering_present",
json_extract_path_text(properties, '$.isMemoryRealmPresent') as "is_memory_realm_present",
json_extract_path_text(properties, '$.isSessionTrackingPresent') as "is_session_tracking_present",
json_extract_path_text(properties, '$.isAccessLogValvePresent') as "is_access_log_valve_present",
json_extract_path_text(properties, '$.maxMemoryUsageInMb') as "max_memory_usage_in_mb",
json_extract_path_text(properties, '$.configurationLocation') as "configuration_location",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.machineIds') as "machine_ids",
json_extract_path_text(properties, '$.webApplications') as "web_applications",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.serverFqdn') as "server_fqdn",
json_extract_path_text(properties, '$.runAsAccountId') as "run_as_account_id",
json_extract_path_text(properties, '$.operatingSystemDetails') as "operating_system_details",
json_extract_path_text(properties, '$.isDeleted') as "is_deleted",
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.updatedTimestamp') as "updated_timestamp",
json_extract_path_text(properties, '$.serverType') as "server_type",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.applianceNames') as "appliance_names",
json_extract_path_text(properties, '$.hasErrors') as "has_errors",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
webAppSiteName,
webServerName
FROM azure.migrate.tomcat_web_servers_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND webAppSiteName = 'replace-me';
```

</TabItem>
</Tabs>
