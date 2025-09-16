--- 
title: vw_partner_registrations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_partner_registrations
  - event_grid
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

Creates, updates, deletes, gets or lists a <code>vw_partner_registrations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_partner_registrations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_partner_registrations" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.partnerRegistrationImmutableId') as "partner_registration_immutable_id",
subscriptionId,
resourceGroupName,
partnerRegistrationName
FROM azure.event_grid.partner_registrations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.partnerRegistrationImmutableId') as "partner_registration_immutable_id",
subscriptionId,
resourceGroupName,
partnerRegistrationName
FROM azure.event_grid.partner_registrations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
