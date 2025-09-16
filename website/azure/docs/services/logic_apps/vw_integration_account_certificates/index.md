--- 
title: vw_integration_account_certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_integration_account_certificates
  - logic_apps
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

Creates, updates, deletes, gets or lists a <code>vw_integration_account_certificates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_integration_account_certificates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.vw_integration_account_certificates" /></td></tr>
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
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.changedTime') as "changed_time",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.key') as "key",
JSON_EXTRACT(properties, '$.publicCertificate') as "public_certificate",
subscriptionId,
resourceGroupName,
integrationAccountName,
certificateName
FROM azure.logic_apps.integration_account_certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND integrationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.changedTime') as "changed_time",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.key') as "key",
json_extract_path_text(properties, '$.publicCertificate') as "public_certificate",
subscriptionId,
resourceGroupName,
integrationAccountName,
certificateName
FROM azure.logic_apps.integration_account_certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND integrationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
