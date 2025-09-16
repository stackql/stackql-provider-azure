--- 
title: vw_shared_galleries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_shared_galleries
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_shared_galleries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_shared_galleries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_shared_galleries" /></td></tr>
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
identifier as identifier,
JSON_EXTRACT(properties, '$.artifactTags') as "artifact_tags",
subscriptionId,
location,
galleryUniqueName
FROM azure.compute.shared_galleries
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
identifier as identifier,
json_extract_path_text(properties, '$.artifactTags') as "artifact_tags",
subscriptionId,
location,
galleryUniqueName
FROM azure.compute.shared_galleries
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
