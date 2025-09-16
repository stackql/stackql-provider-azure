--- 
title: vw_network_service_design_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_service_design_versions
  - hybrid_network
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

Creates, updates, deletes, gets or lists a <code>vw_network_service_design_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_service_design_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.vw_network_service_design_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.versionState') as "version_state",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.configurationGroupSchemaReferences') as "configuration_group_schema_references",
JSON_EXTRACT(properties, '$.nfvisFromSite') as "nfvis_from_site",
JSON_EXTRACT(properties, '$.resourceElementTemplates') as "resource_element_templates",
subscriptionId,
resourceGroupName,
publisherName,
networkServiceDesignGroupName,
networkServiceDesignVersionName
FROM azure.hybrid_network.network_service_design_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND publisherName = 'replace-me' AND networkServiceDesignGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.versionState') as "version_state",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.configurationGroupSchemaReferences') as "configuration_group_schema_references",
json_extract_path_text(properties, '$.nfvisFromSite') as "nfvis_from_site",
json_extract_path_text(properties, '$.resourceElementTemplates') as "resource_element_templates",
subscriptionId,
resourceGroupName,
publisherName,
networkServiceDesignGroupName,
networkServiceDesignVersionName
FROM azure.hybrid_network.network_service_design_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND publisherName = 'replace-me' AND networkServiceDesignGroupName = 'replace-me';
```

</TabItem>
</Tabs>
