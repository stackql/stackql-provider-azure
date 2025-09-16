--- 
title: vw_gallery_apps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_gallery_apps
  - test_base
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_gallery_apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_gallery_apps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_gallery_apps" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.applicationType') as "application_type",
JSON_EXTRACT(properties, '$.applicationId') as "application_id",
JSON_EXTRACT(properties, '$.applicationName') as "application_name",
JSON_EXTRACT(properties, '$.popularity') as "popularity",
subscriptionId,
resourceGroupName,
testBaseAccountName,
galleryAppName
FROM azure_extras.test_base.gallery_apps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.applicationType') as "application_type",
json_extract_path_text(properties, '$.applicationId') as "application_id",
json_extract_path_text(properties, '$.applicationName') as "application_name",
json_extract_path_text(properties, '$.popularity') as "popularity",
subscriptionId,
resourceGroupName,
testBaseAccountName,
galleryAppName
FROM azure_extras.test_base.gallery_apps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
</Tabs>
