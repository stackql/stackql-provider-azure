--- 
title: vw_machines_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_machines_controllers
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

Creates, updates, deletes, gets or lists a <code>vw_machines_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_machines_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_machines_controllers" /></td></tr>
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
JSON_EXTRACT(properties, '$.vCenterFqdn') as "v_center_fqdn",
JSON_EXTRACT(properties, '$.vCenterId') as "v_center_id",
JSON_EXTRACT(properties, '$.instanceUuid') as "instance_uuid",
JSON_EXTRACT(properties, '$.dataCenterScope') as "data_center_scope",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.disks') as "disks",
JSON_EXTRACT(properties, '$.hostInMaintenanceMode') as "host_in_maintenance_mode",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.hostPowerState') as "host_power_state",
JSON_EXTRACT(properties, '$.hostVersion') as "host_version",
JSON_EXTRACT(properties, '$.networkAdapters') as "network_adapters",
JSON_EXTRACT(properties, '$.vMwareToolsStatus') as "v_mware_tools_status",
JSON_EXTRACT(properties, '$.vMwareToolsVersion') as "v_mware_tools_version",
JSON_EXTRACT(properties, '$.changeTrackingSupported') as "change_tracking_supported",
JSON_EXTRACT(properties, '$.changeTrackingEnabled') as "change_tracking_enabled",
JSON_EXTRACT(properties, '$.maxSnapshots') as "max_snapshots",
JSON_EXTRACT(properties, '$.diskEnabledUuid') as "disk_enabled_uuid",
JSON_EXTRACT(properties, '$.numberOfSnapshots') as "number_of_snapshots",
JSON_EXTRACT(properties, '$.altGuestName') as "alt_guest_name",
JSON_EXTRACT(properties, '$.powerStatus') as "power_status",
JSON_EXTRACT(properties, '$.vmFqdn') as "vm_fqdn",
JSON_EXTRACT(properties, '$.vmConfigurationFileLocation') as "vm_configuration_file_location",
JSON_EXTRACT(properties, '$.firmware') as "firmware",
JSON_EXTRACT(properties, '$.guestOsDetails') as "guest_os_details",
JSON_EXTRACT(properties, '$.numberOfApplications') as "number_of_applications",
JSON_EXTRACT(properties, '$.guestDetailsDiscoveryTimestamp') as "guest_details_discovery_timestamp",
JSON_EXTRACT(properties, '$.isGuestDetailsDiscoveryInProgress') as "is_guest_details_discovery_in_progress",
JSON_EXTRACT(properties, '$.dependencyMapping') as "dependency_mapping",
JSON_EXTRACT(properties, '$.dependencyMappingStartTime') as "dependency_mapping_start_time",
JSON_EXTRACT(properties, '$.dependencyMappingEndTime') as "dependency_mapping_end_time",
JSON_EXTRACT(properties, '$.runAsAccountId') as "run_as_account_id",
JSON_EXTRACT(properties, '$.applianceNames') as "appliance_names",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.applicationDiscovery') as "application_discovery",
JSON_EXTRACT(properties, '$.dependencyMapDiscovery') as "dependency_map_discovery",
JSON_EXTRACT(properties, '$.staticDiscovery') as "static_discovery",
JSON_EXTRACT(properties, '$.sqlDiscovery') as "sql_discovery",
JSON_EXTRACT(properties, '$.webAppDiscovery') as "web_app_discovery",
JSON_EXTRACT(properties, '$.oracleDiscovery') as "oracle_discovery",
JSON_EXTRACT(properties, '$.springBootDiscovery') as "spring_boot_discovery",
JSON_EXTRACT(properties, '$.iisDiscovery') as "iis_discovery",
JSON_EXTRACT(properties, '$.tomcatDiscovery') as "tomcat_discovery",
JSON_EXTRACT(properties, '$.appsAndRoles') as "apps_and_roles",
JSON_EXTRACT(properties, '$.productSupportStatus') as "product_support_status",
JSON_EXTRACT(properties, '$.numberOfProcessorCore') as "number_of_processor_core",
JSON_EXTRACT(properties, '$.allocatedMemoryInMb') as "allocated_memory_in_mb",
JSON_EXTRACT(properties, '$.operatingSystemDetails') as "operating_system_details",
JSON_EXTRACT(properties, '$.biosSerialNumber') as "bios_serial_number",
JSON_EXTRACT(properties, '$.biosGuid') as "bios_guid",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.isDeleted') as "is_deleted",
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.updatedTimestamp') as "updated_timestamp",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
machineName
FROM azure.migrate.machines_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.vCenterFqdn') as "v_center_fqdn",
json_extract_path_text(properties, '$.vCenterId') as "v_center_id",
json_extract_path_text(properties, '$.instanceUuid') as "instance_uuid",
json_extract_path_text(properties, '$.dataCenterScope') as "data_center_scope",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.disks') as "disks",
json_extract_path_text(properties, '$.hostInMaintenanceMode') as "host_in_maintenance_mode",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.hostPowerState') as "host_power_state",
json_extract_path_text(properties, '$.hostVersion') as "host_version",
json_extract_path_text(properties, '$.networkAdapters') as "network_adapters",
json_extract_path_text(properties, '$.vMwareToolsStatus') as "v_mware_tools_status",
json_extract_path_text(properties, '$.vMwareToolsVersion') as "v_mware_tools_version",
json_extract_path_text(properties, '$.changeTrackingSupported') as "change_tracking_supported",
json_extract_path_text(properties, '$.changeTrackingEnabled') as "change_tracking_enabled",
json_extract_path_text(properties, '$.maxSnapshots') as "max_snapshots",
json_extract_path_text(properties, '$.diskEnabledUuid') as "disk_enabled_uuid",
json_extract_path_text(properties, '$.numberOfSnapshots') as "number_of_snapshots",
json_extract_path_text(properties, '$.altGuestName') as "alt_guest_name",
json_extract_path_text(properties, '$.powerStatus') as "power_status",
json_extract_path_text(properties, '$.vmFqdn') as "vm_fqdn",
json_extract_path_text(properties, '$.vmConfigurationFileLocation') as "vm_configuration_file_location",
json_extract_path_text(properties, '$.firmware') as "firmware",
json_extract_path_text(properties, '$.guestOsDetails') as "guest_os_details",
json_extract_path_text(properties, '$.numberOfApplications') as "number_of_applications",
json_extract_path_text(properties, '$.guestDetailsDiscoveryTimestamp') as "guest_details_discovery_timestamp",
json_extract_path_text(properties, '$.isGuestDetailsDiscoveryInProgress') as "is_guest_details_discovery_in_progress",
json_extract_path_text(properties, '$.dependencyMapping') as "dependency_mapping",
json_extract_path_text(properties, '$.dependencyMappingStartTime') as "dependency_mapping_start_time",
json_extract_path_text(properties, '$.dependencyMappingEndTime') as "dependency_mapping_end_time",
json_extract_path_text(properties, '$.runAsAccountId') as "run_as_account_id",
json_extract_path_text(properties, '$.applianceNames') as "appliance_names",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.applicationDiscovery') as "application_discovery",
json_extract_path_text(properties, '$.dependencyMapDiscovery') as "dependency_map_discovery",
json_extract_path_text(properties, '$.staticDiscovery') as "static_discovery",
json_extract_path_text(properties, '$.sqlDiscovery') as "sql_discovery",
json_extract_path_text(properties, '$.webAppDiscovery') as "web_app_discovery",
json_extract_path_text(properties, '$.oracleDiscovery') as "oracle_discovery",
json_extract_path_text(properties, '$.springBootDiscovery') as "spring_boot_discovery",
json_extract_path_text(properties, '$.iisDiscovery') as "iis_discovery",
json_extract_path_text(properties, '$.tomcatDiscovery') as "tomcat_discovery",
json_extract_path_text(properties, '$.appsAndRoles') as "apps_and_roles",
json_extract_path_text(properties, '$.productSupportStatus') as "product_support_status",
json_extract_path_text(properties, '$.numberOfProcessorCore') as "number_of_processor_core",
json_extract_path_text(properties, '$.allocatedMemoryInMb') as "allocated_memory_in_mb",
json_extract_path_text(properties, '$.operatingSystemDetails') as "operating_system_details",
json_extract_path_text(properties, '$.biosSerialNumber') as "bios_serial_number",
json_extract_path_text(properties, '$.biosGuid') as "bios_guid",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.isDeleted') as "is_deleted",
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.updatedTimestamp') as "updated_timestamp",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
machineName
FROM azure.migrate.machines_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
</Tabs>
