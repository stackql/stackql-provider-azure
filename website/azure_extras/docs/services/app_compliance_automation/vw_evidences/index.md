--- 
title: vw_evidences
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_evidences
  - app_compliance_automation
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

Creates, updates, deletes, gets or lists a <code>vw_evidences</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_evidences</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.app_compliance_automation.vw_evidences" /></td></tr>
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
JSON_EXTRACT(properties, '$.evidenceType') as "evidence_type",
JSON_EXTRACT(properties, '$.filePath') as "file_path",
JSON_EXTRACT(properties, '$.extraData') as "extra_data",
JSON_EXTRACT(properties, '$.controlId') as "control_id",
JSON_EXTRACT(properties, '$.responsibilityId') as "responsibility_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
reportName,
evidenceName
FROM azure_extras.app_compliance_automation.evidences
WHERE reportName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.evidenceType') as "evidence_type",
json_extract_path_text(properties, '$.filePath') as "file_path",
json_extract_path_text(properties, '$.extraData') as "extra_data",
json_extract_path_text(properties, '$.controlId') as "control_id",
json_extract_path_text(properties, '$.responsibilityId') as "responsibility_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
reportName,
evidenceName
FROM azure_extras.app_compliance_automation.evidences
WHERE reportName = 'replace-me';
```

</TabItem>
</Tabs>
