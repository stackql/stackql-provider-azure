--- 
title: vw_integration_account_agreements
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_integration_account_agreements
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

Creates, updates, deletes, gets or lists a <code>vw_integration_account_agreements</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_integration_account_agreements</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.vw_integration_account_agreements" /></td></tr>
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
JSON_EXTRACT(properties, '$.agreementType') as "agreement_type",
JSON_EXTRACT(properties, '$.hostPartner') as "host_partner",
JSON_EXTRACT(properties, '$.guestPartner') as "guest_partner",
JSON_EXTRACT(properties, '$.hostIdentity') as "host_identity",
JSON_EXTRACT(properties, '$.guestIdentity') as "guest_identity",
JSON_EXTRACT(properties, '$.content') as "content",
subscriptionId,
resourceGroupName,
integrationAccountName,
agreementName
FROM azure.logic_apps.integration_account_agreements
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
json_extract_path_text(properties, '$.agreementType') as "agreement_type",
json_extract_path_text(properties, '$.hostPartner') as "host_partner",
json_extract_path_text(properties, '$.guestPartner') as "guest_partner",
json_extract_path_text(properties, '$.hostIdentity') as "host_identity",
json_extract_path_text(properties, '$.guestIdentity') as "guest_identity",
json_extract_path_text(properties, '$.content') as "content",
subscriptionId,
resourceGroupName,
integrationAccountName,
agreementName
FROM azure.logic_apps.integration_account_agreements
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND integrationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
