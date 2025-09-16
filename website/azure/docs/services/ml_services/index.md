---
title: ml_services
hide_title: false
hide_table_of_contents: false
keywords:
  - ml_services
  - azure
  - stackql
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

ml_services service documentation.

:::info[Service Summary]

total resources: __127__  

:::

## Resources
<div class="row">
<div class="providerDocColumn">
<a href="/services/ml_services/batch_deployments/">batch_deployments</a><br />
<a href="/services/ml_services/batch_endpoints/">batch_endpoints</a><br />
<a href="/services/ml_services/batch_endpoints_keys/">batch_endpoints_keys</a><br />
<a href="/services/ml_services/code_containers/">code_containers</a><br />
<a href="/services/ml_services/code_versions/">code_versions</a><br />
<a href="/services/ml_services/component_containers/">component_containers</a><br />
<a href="/services/ml_services/component_versions/">component_versions</a><br />
<a href="/services/ml_services/compute_allowed_resize_sizes/">compute_allowed_resize_sizes</a><br />
<a href="/services/ml_services/compute_custom_services/">compute_custom_services</a><br />
<a href="/services/ml_services/compute_data_mounts/">compute_data_mounts</a><br />
<a href="/services/ml_services/compute_idle_shutdown_settings/">compute_idle_shutdown_settings</a><br />
<a href="/services/ml_services/compute_keys/">compute_keys</a><br />
<a href="/services/ml_services/compute_nodes/">compute_nodes</a><br />
<a href="/services/ml_services/computes/">computes</a><br />
<a href="/services/ml_services/connection_deployments/">connection_deployments</a><br />
<a href="/services/ml_services/connection_models/">connection_models</a><br />
<a href="/services/ml_services/connection_rai_blocklist_item_bulks/">connection_rai_blocklist_item_bulks</a><br />
<a href="/services/ml_services/connection_rai_blocklist_items/">connection_rai_blocklist_items</a><br />
<a href="/services/ml_services/connection_rai_blocklists/">connection_rai_blocklists</a><br />
<a href="/services/ml_services/connection_rai_policies/">connection_rai_policies</a><br />
<a href="/services/ml_services/data_containers/">data_containers</a><br />
<a href="/services/ml_services/data_versions/">data_versions</a><br />
<a href="/services/ml_services/datastores/">datastores</a><br />
<a href="/services/ml_services/datastores_secrets/">datastores_secrets</a><br />
<a href="/services/ml_services/endpoint_deployments/">endpoint_deployments</a><br />
<a href="/services/ml_services/endpoint_keys/">endpoint_keys</a><br />
<a href="/services/ml_services/endpoint_models/">endpoint_models</a><br />
<a href="/services/ml_services/endpoints/">endpoints</a><br />
<a href="/services/ml_services/environment_containers/">environment_containers</a><br />
<a href="/services/ml_services/environment_versions/">environment_versions</a><br />
<a href="/services/ml_services/features/">features</a><br />
<a href="/services/ml_services/featureset_containers/">featureset_containers</a><br />
<a href="/services/ml_services/featureset_containers_entities/">featureset_containers_entities</a><br />
<a href="/services/ml_services/featureset_versions/">featureset_versions</a><br />
<a href="/services/ml_services/featurestore_entity_containers/">featurestore_entity_containers</a><br />
<a href="/services/ml_services/featurestore_entity_containers_entities/">featurestore_entity_containers_entities</a><br />
<a href="/services/ml_services/featurestore_entity_versions/">featurestore_entity_versions</a><br />
<a href="/services/ml_services/jobs/">jobs</a><br />
<a href="/services/ml_services/managed_network_provisions/">managed_network_provisions</a><br />
<a href="/services/ml_services/managed_network_settings_rules/">managed_network_settings_rules</a><br />
<a href="/services/ml_services/marketplace_subscriptions/">marketplace_subscriptions</a><br />
<a href="/services/ml_services/model_containers/">model_containers</a><br />
<a href="/services/ml_services/model_versions/">model_versions</a><br />
<a href="/services/ml_services/online_deployments/">online_deployments</a><br />
<a href="/services/ml_services/online_deployments_logs/">online_deployments_logs</a><br />
<a href="/services/ml_services/online_deployments_skus/">online_deployments_skus</a><br />
<a href="/services/ml_services/online_endpoints/">online_endpoints</a><br />
<a href="/services/ml_services/online_endpoints_keys/">online_endpoints_keys</a><br />
<a href="/services/ml_services/online_endpoints_tokens/">online_endpoints_tokens</a><br />
<a href="/services/ml_services/operations/">operations</a><br />
<a href="/services/ml_services/private_endpoint_connections/">private_endpoint_connections</a><br />
<a href="/services/ml_services/private_link_resources/">private_link_resources</a><br />
<a href="/services/ml_services/quotas/">quotas</a><br />
<a href="/services/ml_services/rai_policies/">rai_policies</a><br />
<a href="/services/ml_services/registries/">registries</a><br />
<a href="/services/ml_services/registry_code_containers/">registry_code_containers</a><br />
<a href="/services/ml_services/registry_code_versions/">registry_code_versions</a><br />
<a href="/services/ml_services/registry_component_containers/">registry_component_containers</a><br />
<a href="/services/ml_services/registry_component_versions/">registry_component_versions</a><br />
<a href="/services/ml_services/registry_data_containers/">registry_data_containers</a><br />
<a href="/services/ml_services/registry_data_references_blob_reference_sas/">registry_data_references_blob_reference_sas</a><br />
<a href="/services/ml_services/registry_data_versions/">registry_data_versions</a><br />
<a href="/services/ml_services/registry_environment_containers/">registry_environment_containers</a><br />
<a href="/services/ml_services/registry_environment_versions/">registry_environment_versions</a>
</div>
<div class="providerDocColumn">
<a href="/services/ml_services/registry_model_containers/">registry_model_containers</a><br />
<a href="/services/ml_services/registry_model_versions/">registry_model_versions</a><br />
<a href="/services/ml_services/schedules/">schedules</a><br />
<a href="/services/ml_services/serverless_endpoints/">serverless_endpoints</a><br />
<a href="/services/ml_services/serverless_endpoints_keys/">serverless_endpoints_keys</a><br />
<a href="/services/ml_services/usages/">usages</a><br />
<a href="/services/ml_services/virtual_machine_sizes/">virtual_machine_sizes</a><br />
<a href="/services/ml_services/vw_batch_deployments/">vw_batch_deployments</a><br />
<a href="/services/ml_services/vw_batch_endpoints/">vw_batch_endpoints</a><br />
<a href="/services/ml_services/vw_code_containers/">vw_code_containers</a><br />
<a href="/services/ml_services/vw_code_versions/">vw_code_versions</a><br />
<a href="/services/ml_services/vw_component_containers/">vw_component_containers</a><br />
<a href="/services/ml_services/vw_component_versions/">vw_component_versions</a><br />
<a href="/services/ml_services/vw_computes/">vw_computes</a><br />
<a href="/services/ml_services/vw_connection_deployments/">vw_connection_deployments</a><br />
<a href="/services/ml_services/vw_connection_rai_blocklist_items/">vw_connection_rai_blocklist_items</a><br />
<a href="/services/ml_services/vw_connection_rai_blocklists/">vw_connection_rai_blocklists</a><br />
<a href="/services/ml_services/vw_connection_rai_policies/">vw_connection_rai_policies</a><br />
<a href="/services/ml_services/vw_data_containers/">vw_data_containers</a><br />
<a href="/services/ml_services/vw_data_versions/">vw_data_versions</a><br />
<a href="/services/ml_services/vw_datastores/">vw_datastores</a><br />
<a href="/services/ml_services/vw_endpoint_deployments/">vw_endpoint_deployments</a><br />
<a href="/services/ml_services/vw_endpoints/">vw_endpoints</a><br />
<a href="/services/ml_services/vw_environment_containers/">vw_environment_containers</a><br />
<a href="/services/ml_services/vw_environment_versions/">vw_environment_versions</a><br />
<a href="/services/ml_services/vw_features/">vw_features</a><br />
<a href="/services/ml_services/vw_featureset_containers_entities/">vw_featureset_containers_entities</a><br />
<a href="/services/ml_services/vw_featureset_versions/">vw_featureset_versions</a><br />
<a href="/services/ml_services/vw_featurestore_entity_containers_entities/">vw_featurestore_entity_containers_entities</a><br />
<a href="/services/ml_services/vw_featurestore_entity_versions/">vw_featurestore_entity_versions</a><br />
<a href="/services/ml_services/vw_jobs/">vw_jobs</a><br />
<a href="/services/ml_services/vw_managed_network_settings_rules/">vw_managed_network_settings_rules</a><br />
<a href="/services/ml_services/vw_marketplace_subscriptions/">vw_marketplace_subscriptions</a><br />
<a href="/services/ml_services/vw_model_containers/">vw_model_containers</a><br />
<a href="/services/ml_services/vw_model_versions/">vw_model_versions</a><br />
<a href="/services/ml_services/vw_online_deployments/">vw_online_deployments</a><br />
<a href="/services/ml_services/vw_online_endpoints/">vw_online_endpoints</a><br />
<a href="/services/ml_services/vw_private_endpoint_connections/">vw_private_endpoint_connections</a><br />
<a href="/services/ml_services/vw_rai_policies/">vw_rai_policies</a><br />
<a href="/services/ml_services/vw_registries/">vw_registries</a><br />
<a href="/services/ml_services/vw_registry_code_containers/">vw_registry_code_containers</a><br />
<a href="/services/ml_services/vw_registry_code_versions/">vw_registry_code_versions</a><br />
<a href="/services/ml_services/vw_registry_component_containers/">vw_registry_component_containers</a><br />
<a href="/services/ml_services/vw_registry_component_versions/">vw_registry_component_versions</a><br />
<a href="/services/ml_services/vw_registry_data_containers/">vw_registry_data_containers</a><br />
<a href="/services/ml_services/vw_registry_data_versions/">vw_registry_data_versions</a><br />
<a href="/services/ml_services/vw_registry_environment_containers/">vw_registry_environment_containers</a><br />
<a href="/services/ml_services/vw_registry_environment_versions/">vw_registry_environment_versions</a><br />
<a href="/services/ml_services/vw_registry_model_containers/">vw_registry_model_containers</a><br />
<a href="/services/ml_services/vw_registry_model_versions/">vw_registry_model_versions</a><br />
<a href="/services/ml_services/vw_schedules/">vw_schedules</a><br />
<a href="/services/ml_services/vw_serverless_endpoints/">vw_serverless_endpoints</a><br />
<a href="/services/ml_services/vw_workspace_connections/">vw_workspace_connections</a><br />
<a href="/services/ml_services/vw_workspaces/">vw_workspaces</a><br />
<a href="/services/ml_services/workspace_connections/">workspace_connections</a><br />
<a href="/services/ml_services/workspace_connections_secrets/">workspace_connections_secrets</a><br />
<a href="/services/ml_services/workspace_features/">workspace_features</a><br />
<a href="/services/ml_services/workspaces/">workspaces</a><br />
<a href="/services/ml_services/workspaces_keys/">workspaces_keys</a><br />
<a href="/services/ml_services/workspaces_notebook_access_tokens/">workspaces_notebook_access_tokens</a><br />
<a href="/services/ml_services/workspaces_notebook_keys/">workspaces_notebook_keys</a><br />
<a href="/services/ml_services/workspaces_outbound_network_dependencies_endpoints/">workspaces_outbound_network_dependencies_endpoints</a><br />
<a href="/services/ml_services/workspaces_storage_account_keys/">workspaces_storage_account_keys</a>
</div>
</div>