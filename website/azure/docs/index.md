---
title: azure
hide_title: false
hide_table_of_contents: false
keywords:
  - azure
  - microsoft azure
  - stackql
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage Microsoft Azure resources using SQL
custom_edit_url: null
image: /img/providers/azure/stackql-azure-provider-featured-image.png
id: 'provider-intro'
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';

Core cloud services from Microsoft Azure.

:::info[Provider Summary] 

total services: __201__  
total resources: __5781__  

:::

See also:   
[[` SHOW `]](https://stackql.io/docs/language-spec/show) [[` DESCRIBE `]](https://stackql.io/docs/language-spec/describe)  [[` REGISTRY `]](https://stackql.io/docs/language-spec/registry)
* * * 

## Installation

To pull the latest version of the `azure` provider, run the following command:  

```bash
REGISTRY PULL azure;
```
> To view previous provider versions or to pull a specific provider version, see [here](https://stackql.io/docs/language-spec/registry).  

## Authentication

StackQL uses Azure application credentials obtained using the <CopyableCode code="az login" /> command from the Azure SDK.  For more information, see <a href="https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli">here</a>.

### Authenticating using an Azure Service Principal

To authenticate using an Azure Service Principal, set the following environment variables: <CopyableCode code="AZURE_TENANT_ID" />, <CopyableCode code="AZURE_CLIENT_ID" /> and <CopyableCode code="AZURE_CLIENT_SECRET" />, see [__creating-an-azure-service-principal__](https://learn.microsoft.com/en-us/azure/developer/go/azure-sdk-authentication-service-principal?tabs=azure-cli#2-create-an-azure-service-principal).

## Services
<div class="row">
<div class="providerDocColumn">
<a href="/services/aad_b2c/">aad_b2c</a><br />
<a href="/services/aad_domain_services/">aad_domain_services</a><br />
<a href="/services/ad_hybrid_health_service/">ad_hybrid_health_service</a><br />
<a href="/services/advisor/">advisor</a><br />
<a href="/services/aks/">aks</a><br />
<a href="/services/alerts_management/">alerts_management</a><br />
<a href="/services/analysis_services/">analysis_services</a><br />
<a href="/services/api_center/">api_center</a><br />
<a href="/services/api_management/">api_management</a><br />
<a href="/services/app_configuration/">app_configuration</a><br />
<a href="/services/app_service/">app_service</a><br />
<a href="/services/application_insights/">application_insights</a><br />
<a href="/services/attestation/">attestation</a><br />
<a href="/services/authorization/">authorization</a><br />
<a href="/services/automanage/">automanage</a><br />
<a href="/services/automation/">automation</a><br />
<a href="/services/autonomous_dev_platform/">autonomous_dev_platform</a><br />
<a href="/services/azure_active_directory/">azure_active_directory</a><br />
<a href="/services/azure_arc_data/">azure_arc_data</a><br />
<a href="/services/azure_data/">azure_data</a><br />
<a href="/services/azure_fleet/">azure_fleet</a><br />
<a href="/services/bare_metal_infrastructure/">bare_metal_infrastructure</a><br />
<a href="/services/batch/">batch</a><br />
<a href="/services/billing/">billing</a><br />
<a href="/services/billing_benefits/">billing_benefits</a><br />
<a href="/services/blueprints/">blueprints</a><br />
<a href="/services/bot_service/">bot_service</a><br />
<a href="/services/cdn/">cdn</a><br />
<a href="/services/change_analysis/">change_analysis</a><br />
<a href="/services/cloud_shell/">cloud_shell</a><br />
<a href="/services/cognitive_services/">cognitive_services</a><br />
<a href="/services/communication/">communication</a><br />
<a href="/services/compute/">compute</a><br />
<a href="/services/computeschedule/">computeschedule</a><br />
<a href="/services/confidential_ledger/">confidential_ledger</a><br />
<a href="/services/consumption/">consumption</a><br />
<a href="/services/container_apps/">container_apps</a><br />
<a href="/services/container_instances/">container_instances</a><br />
<a href="/services/container_registry/">container_registry</a><br />
<a href="/services/container_storage/">container_storage</a><br />
<a href="/services/cosmos_db/">cosmos_db</a><br />
<a href="/services/cost_management/">cost_management</a><br />
<a href="/services/custom_locations/">custom_locations</a><br />
<a href="/services/custom_providers/">custom_providers</a><br />
<a href="/services/customer_lockbox/">customer_lockbox</a><br />
<a href="/services/dashboard/">dashboard</a><br />
<a href="/services/data_box/">data_box</a><br />
<a href="/services/data_box_edge/">data_box_edge</a><br />
<a href="/services/data_catalog/">data_catalog</a><br />
<a href="/services/data_explorer/">data_explorer</a><br />
<a href="/services/data_factory/">data_factory</a><br />
<a href="/services/data_lake_analytics/">data_lake_analytics</a><br />
<a href="/services/data_lake_store/">data_lake_store</a><br />
<a href="/services/data_migration/">data_migration</a><br />
<a href="/services/data_protection/">data_protection</a><br />
<a href="/services/data_replication/">data_replication</a><br />
<a href="/services/data_share/">data_share</a><br />
<a href="/services/data_transfer/">data_transfer</a><br />
<a href="/services/db_watcher/">db_watcher</a><br />
<a href="/services/defender/">defender</a><br />
<a href="/services/delegated_network/">delegated_network</a><br />
<a href="/services/desktop_virtualization/">desktop_virtualization</a><br />
<a href="/services/dev_center/">dev_center</a><br />
<a href="/services/dev_test_labs/">dev_test_labs</a><br />
<a href="/services/device_registry/">device_registry</a><br />
<a href="/services/device_update/">device_update</a><br />
<a href="/services/devops/">devops</a><br />
<a href="/services/devops_infrastructure/">devops_infrastructure</a><br />
<a href="/services/digital_twins/">digital_twins</a><br />
<a href="/services/dns/">dns</a><br />
<a href="/services/dns_resolver/">dns_resolver</a><br />
<a href="/services/edge_zones/">edge_zones</a><br />
<a href="/services/elastic_san/">elastic_san</a><br />
<a href="/services/engagement_fabric/">engagement_fabric</a><br />
<a href="/services/event_grid/">event_grid</a><br />
<a href="/services/event_hubs/">event_hubs</a><br />
<a href="/services/fabric/">fabric</a><br />
<a href="/services/fleet/">fleet</a><br />
<a href="/services/fluid_relay/">fluid_relay</a><br />
<a href="/services/front_door/">front_door</a><br />
<a href="/services/graph_services/">graph_services</a><br />
<a href="/services/guest_configuration/">guest_configuration</a><br />
<a href="/services/hardware_security_modules/">hardware_security_modules</a><br />
<a href="/services/hdinsight/">hdinsight</a><br />
<a href="/services/healthdataaiservices/">healthdataaiservices</a><br />
<a href="/services/hybrid_aks/">hybrid_aks</a><br />
<a href="/services/hybrid_cloud/">hybrid_cloud</a><br />
<a href="/services/hybrid_compute/">hybrid_compute</a><br />
<a href="/services/hybrid_connectivity/">hybrid_connectivity</a><br />
<a href="/services/hybrid_data_manager/">hybrid_data_manager</a><br />
<a href="/services/hybrid_kubernetes/">hybrid_kubernetes</a><br />
<a href="/services/hybrid_network/">hybrid_network</a><br />
<a href="/services/image_builder/">image_builder</a><br />
<a href="/services/integration_environment/">integration_environment</a><br />
<a href="/services/iot_central/">iot_central</a><br />
<a href="/services/iot_data_processor/">iot_data_processor</a><br />
<a href="/services/iot_firmware_defense/">iot_firmware_defense</a><br />
<a href="/services/iot_hub/">iot_hub</a><br />
<a href="/services/iot_hub_device_provisioning/">iot_hub_device_provisioning</a><br />
<a href="/services/iot_mq/">iot_mq</a><br />
<a href="/services/iot_orchestrator/">iot_orchestrator</a><br />
</div>
<div class="providerDocColumn">
<a href="/services/iotoperations/">iotoperations</a><br />
<a href="/services/k8s_runtime/">k8s_runtime</a><br />
<a href="/services/key_vault/">key_vault</a><br />
<a href="/services/kubernetes_configuration/">kubernetes_configuration</a><br />
<a href="/services/lab_services/">lab_services</a><br />
<a href="/services/large_instances/">large_instances</a><br />
<a href="/services/load_testing/">load_testing</a><br />
<a href="/services/log_analytics/">log_analytics</a><br />
<a href="/services/logic_apps/">logic_apps</a><br />
<a href="/services/machine_learning/">machine_learning</a><br />
<a href="/services/maintenance/">maintenance</a><br />
<a href="/services/managed_applications/">managed_applications</a><br />
<a href="/services/managed_identity/">managed_identity</a><br />
<a href="/services/managed_network/">managed_network</a><br />
<a href="/services/managed_network_fabric/">managed_network_fabric</a><br />
<a href="/services/managed_services/">managed_services</a><br />
<a href="/services/management_groups/">management_groups</a><br />
<a href="/services/maps/">maps</a><br />
<a href="/services/maria_db/">maria_db</a><br />
<a href="/services/media_services/">media_services</a><br />
<a href="/services/migrate/">migrate</a><br />
<a href="/services/migrate_projects/">migrate_projects</a><br />
<a href="/services/mixed_reality/">mixed_reality</a><br />
<a href="/services/ml_services/">ml_services</a><br />
<a href="/services/mobile_network/">mobile_network</a><br />
<a href="/services/monitor/">monitor</a><br />
<a href="/services/mpc_network_function/">mpc_network_function</a><br />
<a href="/services/mysql/">mysql</a><br />
<a href="/services/network/">network</a><br />
<a href="/services/network_analytics/">network_analytics</a><br />
<a href="/services/network_function/">network_function</a><br />
<a href="/services/nexus/">nexus</a><br />
<a href="/services/notification_hubs/">notification_hubs</a><br />
<a href="/services/operations_management/">operations_management</a><br />
<a href="/services/orbital/">orbital</a><br />
<a href="/services/peering/">peering</a><br />
<a href="/services/playwrighttesting/">playwrighttesting</a><br />
<a href="/services/portal/">portal</a><br />
<a href="/services/portal_services/">portal_services</a><br />
<a href="/services/postgresql/">postgresql</a><br />
<a href="/services/postgresql_hsc/">postgresql_hsc</a><br />
<a href="/services/powerbi_dedicated/">powerbi_dedicated</a><br />
<a href="/services/powerbi_embedded/">powerbi_embedded</a><br />
<a href="/services/powerbi_privatelinks/">powerbi_privatelinks</a><br />
<a href="/services/private_dns/">private_dns</a><br />
<a href="/services/programmableconnectivity/">programmableconnectivity</a><br />
<a href="/services/provider_hub/">provider_hub</a><br />
<a href="/services/purview/">purview</a><br />
<a href="/services/purview_policy/">purview_policy</a><br />
<a href="/services/quantum/">quantum</a><br />
<a href="/services/quota/">quota</a><br />
<a href="/services/recovery_services/">recovery_services</a><br />
<a href="/services/recovery_services_backup/">recovery_services_backup</a><br />
<a href="/services/recovery_services_site_recovery/">recovery_services_site_recovery</a><br />
<a href="/services/relay/">relay</a><br />
<a href="/services/reservations/">reservations</a><br />
<a href="/services/resource_connector/">resource_connector</a><br />
<a href="/services/resource_graph/">resource_graph</a><br />
<a href="/services/resource_mover/">resource_mover</a><br />
<a href="/services/resources/">resources</a><br />
<a href="/services/scheduler/">scheduler</a><br />
<a href="/services/scom/">scom</a><br />
<a href="/services/search/">search</a><br />
<a href="/services/security/">security</a><br />
<a href="/services/security_and_compliance/">security_and_compliance</a><br />
<a href="/services/sentinel/">sentinel</a><br />
<a href="/services/serial_console/">serial_console</a><br />
<a href="/services/service_bus/">service_bus</a><br />
<a href="/services/service_connector/">service_connector</a><br />
<a href="/services/service_fabric/">service_fabric</a><br />
<a href="/services/service_fabric_managed_clusters/">service_fabric_managed_clusters</a><br />
<a href="/services/service_fabric_mesh/">service_fabric_mesh</a><br />
<a href="/services/service_networking/">service_networking</a><br />
<a href="/services/signalr/">signalr</a><br />
<a href="/services/software_plan/">software_plan</a><br />
<a href="/services/sphere/">sphere</a><br />
<a href="/services/spring_apps/">spring_apps</a><br />
<a href="/services/sql/">sql</a><br />
<a href="/services/sql_vm/">sql_vm</a><br />
<a href="/services/standby_pools/">standby_pools</a><br />
<a href="/services/storage/">storage</a><br />
<a href="/services/storage_cache/">storage_cache</a><br />
<a href="/services/storage_import_export/">storage_import_export</a><br />
<a href="/services/storage_mover/">storage_mover</a><br />
<a href="/services/storage_pool/">storage_pool</a><br />
<a href="/services/storage_sync/">storage_sync</a><br />
<a href="/services/storageactions/">storageactions</a><br />
<a href="/services/stream_analytics/">stream_analytics</a><br />
<a href="/services/subscription/">subscription</a><br />
<a href="/services/support/">support</a><br />
<a href="/services/synapse/">synapse</a><br />
<a href="/services/system_center_vm_manager/">system_center_vm_manager</a><br />
<a href="/services/terraform/">terraform</a><br />
<a href="/services/time_series_insights/">time_series_insights</a><br />
<a href="/services/traffic_manager/">traffic_manager</a><br />
<a href="/services/verified_id/">verified_id</a><br />
<a href="/services/video_analyzer/">video_analyzer</a><br />
<a href="/services/voice_services/">voice_services</a><br />
<a href="/services/web_pubsub/">web_pubsub</a><br />
<a href="/services/workload_monitor/">workload_monitor</a><br />
</div>
</div>
