--- 
title: vw_analysis_results
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_analysis_results
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

Creates, updates, deletes, gets or lists a <code>vw_analysis_results</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_analysis_results</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_analysis_results" /></td></tr>
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
JSON_EXTRACT(properties, '$.grade') as "grade",
JSON_EXTRACT(properties, '$.analysisResultType') as "analysis_result_type",
subscriptionId,
resourceGroupName,
testBaseAccountName,
packageName,
testResultName,
analysisResultName,
analysisResultType
FROM azure_extras.test_base.analysis_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND packageName = 'replace-me' AND testResultName = 'replace-me' AND analysisResultType = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.grade') as "grade",
json_extract_path_text(properties, '$.analysisResultType') as "analysis_result_type",
subscriptionId,
resourceGroupName,
testBaseAccountName,
packageName,
testResultName,
analysisResultName,
analysisResultType
FROM azure_extras.test_base.analysis_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND packageName = 'replace-me' AND testResultName = 'replace-me' AND analysisResultType = 'replace-me';
```

</TabItem>
</Tabs>
