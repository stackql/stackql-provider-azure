--- 
title: vw_components
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_components
  - application_insights
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

Creates, updates, deletes, gets or lists a <code>vw_components</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_components</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.vw_components" /></td></tr>
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
kind as kind,
etag as etag,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.ApplicationId') as "application_id",
JSON_EXTRACT(properties, '$.AppId') as "app_id",
JSON_EXTRACT(properties, '$.Name') as "name",
JSON_EXTRACT(properties, '$.Application_Type') as "application__type",
JSON_EXTRACT(properties, '$.Flow_Type') as "flow__type",
JSON_EXTRACT(properties, '$.Request_Source') as "request__source",
JSON_EXTRACT(properties, '$.InstrumentationKey') as "instrumentation_key",
JSON_EXTRACT(properties, '$.CreationDate') as "creation_date",
JSON_EXTRACT(properties, '$.TenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.HockeyAppId') as "hockey_app_id",
JSON_EXTRACT(properties, '$.HockeyAppToken') as "hockey_app_token",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.SamplingPercentage') as "sampling_percentage",
JSON_EXTRACT(properties, '$.ConnectionString') as "connection_string",
JSON_EXTRACT(properties, '$.RetentionInDays') as "retention_in_days",
JSON_EXTRACT(properties, '$.DisableIpMasking') as "disable_ip_masking",
JSON_EXTRACT(properties, '$.ImmediatePurgeDataOn30Days') as "immediate_purge_data_on30_days",
JSON_EXTRACT(properties, '$.WorkspaceResourceId') as "workspace_resource_id",
JSON_EXTRACT(properties, '$.LaMigrationDate') as "la_migration_date",
JSON_EXTRACT(properties, '$.PrivateLinkScopedResources') as "private_link_scoped_resources",
JSON_EXTRACT(properties, '$.publicNetworkAccessForIngestion') as "public_network_access_for_ingestion",
JSON_EXTRACT(properties, '$.publicNetworkAccessForQuery') as "public_network_access_for_query",
JSON_EXTRACT(properties, '$.IngestionMode') as "ingestion_mode",
JSON_EXTRACT(properties, '$.DisableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.ForceCustomerStorageForProfiler') as "force_customer_storage_for_profiler",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.application_insights.components
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
kind as kind,
etag as etag,
type as type,
tags as tags,
json_extract_path_text(properties, '$.ApplicationId') as "application_id",
json_extract_path_text(properties, '$.AppId') as "app_id",
json_extract_path_text(properties, '$.Name') as "name",
json_extract_path_text(properties, '$.Application_Type') as "application__type",
json_extract_path_text(properties, '$.Flow_Type') as "flow__type",
json_extract_path_text(properties, '$.Request_Source') as "request__source",
json_extract_path_text(properties, '$.InstrumentationKey') as "instrumentation_key",
json_extract_path_text(properties, '$.CreationDate') as "creation_date",
json_extract_path_text(properties, '$.TenantId') as "tenant_id",
json_extract_path_text(properties, '$.HockeyAppId') as "hockey_app_id",
json_extract_path_text(properties, '$.HockeyAppToken') as "hockey_app_token",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.SamplingPercentage') as "sampling_percentage",
json_extract_path_text(properties, '$.ConnectionString') as "connection_string",
json_extract_path_text(properties, '$.RetentionInDays') as "retention_in_days",
json_extract_path_text(properties, '$.DisableIpMasking') as "disable_ip_masking",
json_extract_path_text(properties, '$.ImmediatePurgeDataOn30Days') as "immediate_purge_data_on30_days",
json_extract_path_text(properties, '$.WorkspaceResourceId') as "workspace_resource_id",
json_extract_path_text(properties, '$.LaMigrationDate') as "la_migration_date",
json_extract_path_text(properties, '$.PrivateLinkScopedResources') as "private_link_scoped_resources",
json_extract_path_text(properties, '$.publicNetworkAccessForIngestion') as "public_network_access_for_ingestion",
json_extract_path_text(properties, '$.publicNetworkAccessForQuery') as "public_network_access_for_query",
json_extract_path_text(properties, '$.IngestionMode') as "ingestion_mode",
json_extract_path_text(properties, '$.DisableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.ForceCustomerStorageForProfiler') as "force_customer_storage_for_profiler",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.application_insights.components
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
