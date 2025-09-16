--- 
title: vw_online_deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_online_deployments
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_online_deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_online_deployments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_online_deployments" /></td></tr>
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
identity as identity,
kind as kind,
sku as sku,
JSON_EXTRACT(properties, '$.codeConfiguration') as "code_configuration",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.environmentId') as "environment_id",
JSON_EXTRACT(properties, '$.environmentVariables') as "environment_variables",
JSON_EXTRACT(properties, '$.properties') as "properties",
JSON_EXTRACT(properties, '$.appInsightsEnabled') as "app_insights_enabled",
JSON_EXTRACT(properties, '$.dataCollector') as "data_collector",
JSON_EXTRACT(properties, '$.egressPublicNetworkAccess') as "egress_public_network_access",
JSON_EXTRACT(properties, '$.endpointComputeType') as "endpoint_compute_type",
JSON_EXTRACT(properties, '$.instanceType') as "instance_type",
JSON_EXTRACT(properties, '$.livenessProbe') as "liveness_probe",
JSON_EXTRACT(properties, '$.model') as "model",
JSON_EXTRACT(properties, '$.modelMountPath') as "model_mount_path",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.readinessProbe') as "readiness_probe",
JSON_EXTRACT(properties, '$.requestSettings') as "request_settings",
JSON_EXTRACT(properties, '$.scaleSettings') as "scale_settings",
subscriptionId,
resourceGroupName,
workspaceName,
endpointName,
deploymentName
FROM azure.ml_services.online_deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
kind as kind,
sku as sku,
json_extract_path_text(properties, '$.codeConfiguration') as "code_configuration",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.environmentId') as "environment_id",
json_extract_path_text(properties, '$.environmentVariables') as "environment_variables",
json_extract_path_text(properties, '$.properties') as "properties",
json_extract_path_text(properties, '$.appInsightsEnabled') as "app_insights_enabled",
json_extract_path_text(properties, '$.dataCollector') as "data_collector",
json_extract_path_text(properties, '$.egressPublicNetworkAccess') as "egress_public_network_access",
json_extract_path_text(properties, '$.endpointComputeType') as "endpoint_compute_type",
json_extract_path_text(properties, '$.instanceType') as "instance_type",
json_extract_path_text(properties, '$.livenessProbe') as "liveness_probe",
json_extract_path_text(properties, '$.model') as "model",
json_extract_path_text(properties, '$.modelMountPath') as "model_mount_path",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.readinessProbe') as "readiness_probe",
json_extract_path_text(properties, '$.requestSettings') as "request_settings",
json_extract_path_text(properties, '$.scaleSettings') as "scale_settings",
subscriptionId,
resourceGroupName,
workspaceName,
endpointName,
deploymentName
FROM azure.ml_services.online_deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
</Tabs>
