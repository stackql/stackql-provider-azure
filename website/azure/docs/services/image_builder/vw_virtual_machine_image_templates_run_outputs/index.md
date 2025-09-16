--- 
title: vw_virtual_machine_image_templates_run_outputs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_image_templates_run_outputs
  - image_builder
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_image_templates_run_outputs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_image_templates_run_outputs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.image_builder.vw_virtual_machine_image_templates_run_outputs" /></td></tr>
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
JSON_EXTRACT(properties, '$.artifactId') as "artifact_id",
JSON_EXTRACT(properties, '$.artifactUri') as "artifact_uri",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
imageTemplateName,
runOutputName
FROM azure.image_builder.virtual_machine_image_templates_run_outputs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND imageTemplateName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.artifactId') as "artifact_id",
json_extract_path_text(properties, '$.artifactUri') as "artifact_uri",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
imageTemplateName,
runOutputName
FROM azure.image_builder.virtual_machine_image_templates_run_outputs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND imageTemplateName = 'replace-me';
```

</TabItem>
</Tabs>
